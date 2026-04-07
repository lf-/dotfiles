//go:build linux

package net

import (
	"fmt"
	"net"
	"sync"
	"sync/atomic"
	"time"

	"github.com/jingkaihe/matchlock/internal/errx"
)

// DNSForwarder is a UDP relay that intercepts guest DNS queries (redirected
// here via an nftables DNAT rule on UDP/53) and forwards them to the
// configured upstream resolvers on the host network. This mirrors how
// the macOS path handles DNS via gVisor's UDP forwarder
// (pkg/net/stack_darwin.go handleDNS).
//
// The guest receives real DNS answers from the upstream resolver. The
// transparent proxy still sees every hostname via Host header (HTTP)
// or SNI (HTTPS) because the nftables TCP DNAT rules intercept all
// port 80/443 traffic regardless of destination IP.
type DNSForwarder struct {
	conn       *net.UDPConn
	dnsServers []string
	dnsIndex   atomic.Uint64

	mu     sync.Mutex
	closed bool
	wg     sync.WaitGroup
}

const dnsUpstreamTimeout = 5 * time.Second

// NewDNSForwarder binds a UDP socket on bindAddr:0 (kernel-assigned port)
// and starts serving. dnsServers is the list of upstream resolvers to
// forward queries to (e.g. ["8.8.8.8", "8.8.4.4"]). The caller must
// call Close to shut it down.
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
		dnsServers: dnsServers,
	}
	d.wg.Add(1)
	go d.serve()
	return d, nil
}

// Port returns the ephemeral port chosen by the kernel.
func (d *DNSForwarder) Port() int {
	return d.conn.LocalAddr().(*net.UDPAddr).Port
}

// Close stops the server and releases the socket.
func (d *DNSForwarder) Close() error {
	d.mu.Lock()
	if d.closed {
		d.mu.Unlock()
		return nil
	}
	d.closed = true
	d.mu.Unlock()

	_ = d.conn.Close()
	d.wg.Wait()
	return nil
}

func (d *DNSForwarder) serve() {
	defer d.wg.Done()
	buf := make([]byte, 512) // RFC 1035 max UDP message size
	for {
		n, clientAddr, err := d.conn.ReadFromUDP(buf)
		if err != nil {
			d.mu.Lock()
			closed := d.closed
			d.mu.Unlock()
			if closed {
				return
			}
			continue
		}

		// Forward to upstream in a goroutine so slow resolvers don't
		// block other queries.
		query := make([]byte, n)
		copy(query, buf[:n])
		go d.forward(query, clientAddr)
	}
}

func (d *DNSForwarder) forward(query []byte, clientAddr *net.UDPAddr) {
	// Round-robin across configured upstream servers.
	idx := d.dnsIndex.Add(1) - 1
	server := d.dnsServers[idx%uint64(len(d.dnsServers))]

	upstream, err := net.DialTimeout("udp", server+":53", dnsUpstreamTimeout)
	if err != nil {
		return
	}
	defer upstream.Close()
	_ = upstream.SetDeadline(time.Now().Add(dnsUpstreamTimeout))

	if _, err := upstream.Write(query); err != nil {
		return
	}

	resp := make([]byte, 512)
	n, err := upstream.Read(resp)
	if err != nil {
		return
	}

	_, _ = d.conn.WriteToUDP(resp[:n], clientAddr)
}
