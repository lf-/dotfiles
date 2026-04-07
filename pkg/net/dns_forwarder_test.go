//go:build linux

package net

import (
	"encoding/binary"
	"net"
	"testing"
	"time"
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

func TestDNSForwarderEndToEnd(t *testing.T) {
	// This test requires real network access to an upstream resolver.
	d, err := NewDNSForwarder("127.0.0.1", []string{"8.8.8.8"})
	if err != nil {
		t.Fatalf("NewDNSForwarder: %v", err)
	}
	defer d.Close()

	conn, err := net.DialUDP("udp4", nil, &net.UDPAddr{IP: net.IPv4(127, 0, 0, 1), Port: d.Port()})
	if err != nil {
		t.Fatalf("DialUDP: %v", err)
	}
	defer conn.Close()

	_ = conn.SetDeadline(time.Now().Add(5 * time.Second))
	if _, err := conn.Write(buildQuery(0x4242, 1, "google.com")); err != nil {
		t.Fatalf("Write: %v", err)
	}
	buf := make([]byte, 512)
	n, err := conn.Read(buf)
	if err != nil {
		t.Fatalf("Read: %v", err)
	}
	if n < 12 {
		t.Fatalf("response too short: %d bytes", n)
	}
	if binary.BigEndian.Uint16(buf[0:2]) != 0x4242 {
		t.Fatalf("id not echoed")
	}
	ancount := binary.BigEndian.Uint16(buf[6:8])
	if ancount == 0 {
		t.Fatalf("expected at least 1 answer for google.com A query, got 0")
	}
	// Verify we got a real IP (not 192.0.2.1 sentinel)
	// The answer section starts after the question. Walk past it.
	off := 12
	for off < n && buf[off] != 0 {
		off += 1 + int(buf[off])
	}
	off += 5 // null terminator + qtype(2) + qclass(2)
	if off+12 > n {
		t.Fatalf("response too short to contain answer record")
	}
	// Skip answer name(2, pointer) + type(2) + class(2) + ttl(4) + rdlength(2)
	off += 2 + 2 + 2 + 4
	rdlen := binary.BigEndian.Uint16(buf[off : off+2])
	off += 2
	if rdlen == 4 && off+4 <= n {
		ip := net.IPv4(buf[off], buf[off+1], buf[off+2], buf[off+3])
		if ip.Equal(net.IPv4(192, 0, 2, 1)) {
			t.Fatalf("got sentinel IP 192.0.2.1 — forwarder should return real upstream answers")
		}
		t.Logf("resolved google.com → %s", ip)
	}
}

func TestDNSForwarderRejectsNoServers(t *testing.T) {
	_, err := NewDNSForwarder("127.0.0.1", nil)
	if err == nil {
		t.Fatal("expected error with no DNS servers")
	}
}
