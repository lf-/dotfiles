//go:build linux

package net

import (
	"fmt"
	"net"
	"sync"
	"time"

	"github.com/jingkaihe/matchlock/internal/errx"
)

// DNSForwarder relays guest DNS queries to upstream resolvers.
type DNSForwarder struct {
	conn       *net.UDPConn
	dnsServers []string

	requests  chan dnsRequest
	stopCh    chan struct{}
	closeOnce sync.Once
	wg        sync.WaitGroup

	upstreamMu sync.Mutex
	upstreams  map[net.Conn]struct{}
}

type dnsRequest struct {
	query      []byte
	clientAddr *net.UDPAddr
}

const (
	dnsUpstreamTimeout = 5 * time.Second
	dnsPacketBufSize   = 4096
	// Bound concurrent upstream exchanges so a guest cannot create an
	// unbounded number of goroutines or sockets by flooding DNS traffic.
	dnsWorkerCount = 32
	dnsQueueSize   = 128
)

// NewDNSForwarder starts a UDP forwarder on bindAddr.
func NewDNSForwarder(bindAddr string, dnsServers []string) (*DNSForwarder, error) {
	if len(dnsServers) == 0 {
		return nil, errx.With(ErrListen, " no DNS servers configured for forwarder")
	}
	addr, err := net.ResolveUDPAddr("udp4", fmt.Sprintf("%s:0", bindAddr))
	if err != nil {
		return nil, errx.With(ErrListen, " resolving DNS bind addr %s: %w", bindAddr, err)
	}
	conn, err := net.ListenUDP("udp4", addr)
	if err != nil {
		return nil, errx.With(ErrListen, " on DNS port %s: %w", addr, err)
	}
	d := &DNSForwarder{
		conn:       conn,
		dnsServers: append([]string(nil), dnsServers...),
		requests:   make(chan dnsRequest, dnsQueueSize),
		stopCh:     make(chan struct{}),
		upstreams:  make(map[net.Conn]struct{}),
	}
	d.wg.Add(1)
	go d.serve()
	for range dnsWorkerCount {
		d.wg.Add(1)
		go d.worker()
	}
	return d, nil
}

// Port returns the ephemeral port chosen by the kernel.
func (d *DNSForwarder) Port() int {
	return d.conn.LocalAddr().(*net.UDPAddr).Port
}

// Close stops the server and releases the socket.
func (d *DNSForwarder) Close() error {
	d.closeOnce.Do(func() {
		close(d.stopCh)
		_ = d.conn.Close()
		d.closeUpstreams()
	})
	d.wg.Wait()
	return nil
}

func (d *DNSForwarder) serve() {
	defer d.wg.Done()
	buf := make([]byte, dnsPacketBufSize)
	for {
		n, clientAddr, err := d.conn.ReadFromUDP(buf)
		if err != nil {
			if d.isStopping() {
				return
			}
			continue
		}

		query := make([]byte, n)
		copy(query, buf[:n])
		select {
		case d.requests <- dnsRequest{query: query, clientAddr: clientAddr}:
		case <-d.stopCh:
			return
		}
	}
}

func (d *DNSForwarder) worker() {
	defer d.wg.Done()
	for {
		select {
		case req := <-d.requests:
			d.forward(req.query, req.clientAddr)
		case <-d.stopCh:
			return
		}
	}
}

func (d *DNSForwarder) forward(query []byte, clientAddr *net.UDPAddr) {
	for _, server := range d.dnsServers {
		if d.isStopping() {
			return
		}
		resp, err := d.exchange(query, server)
		if err != nil {
			continue
		}
		if d.isStopping() {
			return
		}

		_, _ = d.conn.WriteToUDP(resp, clientAddr)
		return
	}
}

func (d *DNSForwarder) exchange(query []byte, server string) ([]byte, error) {
	if d.isStopping() {
		return nil, net.ErrClosed
	}
	upstream, err := net.DialTimeout("udp", dnsServerAddr(server), dnsUpstreamTimeout)
	if err != nil {
		return nil, err
	}
	if !d.trackUpstream(upstream) {
		_ = upstream.Close()
		return nil, net.ErrClosed
	}
	defer d.untrackUpstream(upstream)
	defer upstream.Close()

	_ = upstream.SetDeadline(time.Now().Add(dnsUpstreamTimeout))
	if _, err := upstream.Write(query); err != nil {
		return nil, err
	}

	resp := make([]byte, dnsPacketBufSize)
	n, err := upstream.Read(resp)
	if err != nil {
		return nil, err
	}

	return resp[:n], nil
}

func (d *DNSForwarder) isStopping() bool {
	select {
	case <-d.stopCh:
		return true
	default:
		return false
	}
}

func (d *DNSForwarder) trackUpstream(upstream net.Conn) bool {
	d.upstreamMu.Lock()
	defer d.upstreamMu.Unlock()

	if d.isStopping() {
		return false
	}
	d.upstreams[upstream] = struct{}{}
	return true
}

func (d *DNSForwarder) untrackUpstream(upstream net.Conn) {
	d.upstreamMu.Lock()
	defer d.upstreamMu.Unlock()
	delete(d.upstreams, upstream)
}

func (d *DNSForwarder) closeUpstreams() {
	d.upstreamMu.Lock()
	upstreams := make([]net.Conn, 0, len(d.upstreams))
	for upstream := range d.upstreams {
		upstreams = append(upstreams, upstream)
	}
	d.upstreamMu.Unlock()

	for _, upstream := range upstreams {
		_ = upstream.Close()
	}
}

func dnsServerAddr(server string) string {
	if _, _, err := net.SplitHostPort(server); err == nil {
		return server
	}
	return net.JoinHostPort(server, "53")
}
