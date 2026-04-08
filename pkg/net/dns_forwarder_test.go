//go:build linux

package net

import (
	"encoding/binary"
	"fmt"
	"net"
	"testing"
	"time"

	"github.com/stretchr/testify/require"
)

// buildQuery crafts a minimal A/AAAA query for hostname.
func buildQuery(id uint16, qtype uint16, hostname string) []byte {
	q := make([]byte, 0, 32)
	var header [12]byte
	binary.BigEndian.PutUint16(header[0:2], id)
	header[2] = 0x01 // RD=1
	header[3] = 0x00
	binary.BigEndian.PutUint16(header[4:6], 1) // QDCOUNT
	q = append(q, header[:]...)

	for _, label := range splitLabels(hostname) {
		q = append(q, byte(len(label)))
		q = append(q, []byte(label)...)
	}
	q = append(q, 0x00) // null terminator

	var tail [4]byte
	binary.BigEndian.PutUint16(tail[0:2], qtype)
	binary.BigEndian.PutUint16(tail[2:4], 1) // class IN
	q = append(q, tail[:]...)
	return q
}

func splitLabels(s string) []string {
	var out []string
	start := 0
	for i := 0; i <= len(s); i++ {
		if i == len(s) || s[i] == '.' {
			if i > start {
				out = append(out, s[start:i])
			}
			start = i + 1
		}
	}
	return out
}

func buildResponse(query []byte, answerIP net.IP) []byte {
	resp := append([]byte(nil), query...)
	resp[2] = 0x81 // QR=1, RD=1
	resp[3] = 0x80 // RA=1
	binary.BigEndian.PutUint16(resp[6:8], 1)

	answer := make([]byte, 16)
	answer[0] = 0xc0
	answer[1] = 0x0c
	binary.BigEndian.PutUint16(answer[2:4], 1)
	binary.BigEndian.PutUint16(answer[4:6], 1)
	binary.BigEndian.PutUint32(answer[6:10], 60)
	binary.BigEndian.PutUint16(answer[10:12], 4)
	copy(answer[12:16], answerIP.To4())

	return append(resp, answer...)
}

func startStubDNSServer(t *testing.T, ip net.IP) string {
	t.Helper()

	ln, err := net.ListenUDP("udp4", &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: 0})
	require.NoError(t, err)

	t.Cleanup(func() {
		_ = ln.Close()
	})

	go func() {
		buf := make([]byte, dnsPacketBufSize)
		for {
			n, addr, err := ln.ReadFromUDP(buf)
			if err != nil {
				return
			}
			resp := buildResponse(buf[:n], ip)
			_, _ = ln.WriteToUDP(resp, addr)
		}
	}()

	return ln.LocalAddr().String()
}

func startBlackholeDNSServer(t *testing.T, seen chan<- struct{}) string {
	t.Helper()

	ln, err := net.ListenUDP("udp4", &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: 0})
	require.NoError(t, err)

	t.Cleanup(func() {
		_ = ln.Close()
	})

	go func() {
		buf := make([]byte, dnsPacketBufSize)
		for {
			_, _, err := ln.ReadFromUDP(buf)
			if err != nil {
				return
			}
			select {
			case seen <- struct{}{}:
			default:
			}
		}
	}()

	return ln.LocalAddr().String()
}

func responseAnswerIPv4(t *testing.T, resp []byte) net.IP {
	t.Helper()

	require.GreaterOrEqual(t, len(resp), 12, "response too short")
	ancount := binary.BigEndian.Uint16(resp[6:8])
	require.NotZero(t, ancount, "expected at least 1 answer")

	off := 12
	for off < len(resp) && resp[off] != 0 {
		off += 1 + int(resp[off])
	}
	off += 5 // null terminator + qtype(2) + qclass(2)
	require.LessOrEqual(t, off+12, len(resp), "response too short to contain answer record")
	off += 2 + 2 + 2 + 4
	rdlen := binary.BigEndian.Uint16(resp[off : off+2])
	off += 2
	require.Equal(t, uint16(4), rdlen, "expected IPv4 answer")
	require.LessOrEqual(t, off+4, len(resp), "response too short for IPv4 answer")

	return net.IPv4(resp[off], resp[off+1], resp[off+2], resp[off+3])
}

func TestDNSForwarderEndToEnd(t *testing.T) {
	serverIP := net.IPv4(203, 0, 113, 9)
	server := startStubDNSServer(t, serverIP)
	d, err := NewDNSForwarder("127.0.0.1", []string{server})
	require.NoError(t, err)
	defer d.Close()

	conn, err := net.DialUDP("udp4", nil, &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: d.Port()})
	require.NoError(t, err)
	defer conn.Close()

	_ = conn.SetDeadline(time.Now().Add(5 * time.Second))
	_, err = conn.Write(buildQuery(0x4242, 1, "google.com"))
	require.NoError(t, err)
	buf := make([]byte, 512)
	n, err := conn.Read(buf)
	require.NoError(t, err)
	require.Equal(t, uint16(0x4242), binary.BigEndian.Uint16(buf[0:2]), "id not echoed")
	ip := responseAnswerIPv4(t, buf[:n])
	require.True(t, ip.Equal(serverIP), fmt.Sprintf("expected %s, got %s", serverIP, ip))
}

func TestDNSForwarderFallsBackAcrossServers(t *testing.T) {
	serverIP := net.IPv4(198, 51, 100, 7)
	server := startStubDNSServer(t, serverIP)
	d, err := NewDNSForwarder("127.0.0.1", []string{"127.0.0.1:1", server})
	require.NoError(t, err)
	defer d.Close()

	resp, err := d.exchange(buildQuery(0x5151, 1, "example.com"), "127.0.0.1:1")
	require.Error(t, err)
	require.Nil(t, resp)

	conn, err := net.DialUDP("udp4", nil, &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: d.Port()})
	require.NoError(t, err)
	defer conn.Close()

	_ = conn.SetDeadline(time.Now().Add(5 * time.Second))
	_, err = conn.Write(buildQuery(0x6161, 1, "example.com"))
	require.NoError(t, err)

	buf := make([]byte, dnsPacketBufSize)
	n, err := conn.Read(buf)
	require.NoError(t, err)
	require.GreaterOrEqual(t, n, 12)
	require.Equal(t, uint16(0x6161), binary.BigEndian.Uint16(buf[0:2]))
}

func TestDNSForwarderPreservesResolverOrder(t *testing.T) {
	firstIP := net.IPv4(203, 0, 113, 10)
	secondIP := net.IPv4(203, 0, 113, 11)
	first := startStubDNSServer(t, firstIP)
	second := startStubDNSServer(t, secondIP)
	d, err := NewDNSForwarder("127.0.0.1", []string{first, second})
	require.NoError(t, err)
	defer d.Close()

	conn, err := net.DialUDP("udp4", nil, &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: d.Port()})
	require.NoError(t, err)
	defer conn.Close()

	for i := range 4 {
		_ = conn.SetDeadline(time.Now().Add(5 * time.Second))
		_, err = conn.Write(buildQuery(uint16(0x7000+i), 1, "example.internal"))
		require.NoError(t, err)

		buf := make([]byte, dnsPacketBufSize)
		n, err := conn.Read(buf)
		require.NoError(t, err)
		ip := responseAnswerIPv4(t, buf[:n])
		require.True(t, ip.Equal(firstIP), fmt.Sprintf("expected %s, got %s", firstIP, ip))
	}
}

func TestDNSForwarderCloseInterruptsInFlightExchange(t *testing.T) {
	seen := make(chan struct{}, 1)
	server := startBlackholeDNSServer(t, seen)
	d, err := NewDNSForwarder("127.0.0.1", []string{server})
	require.NoError(t, err)
	t.Cleanup(func() {
		_ = d.Close()
	})

	conn, err := net.DialUDP("udp4", nil, &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: d.Port()})
	require.NoError(t, err)
	defer conn.Close()

	_, err = conn.Write(buildQuery(0x7878, 1, "example.com"))
	require.NoError(t, err)

	select {
	case <-seen:
	case <-time.After(2 * time.Second):
		t.Fatal("forwarder did not send query to upstream")
	}

	closed := make(chan struct{})
	go func() {
		_ = d.Close()
		close(closed)
	}()

	select {
	case <-closed:
	case <-time.After(2 * time.Second):
		t.Fatal("Close blocked waiting for upstream timeout")
	}
}

func TestDNSForwarderRejectsNoServers(t *testing.T) {
	_, err := NewDNSForwarder("127.0.0.1", nil)
	require.Error(t, err)
}
