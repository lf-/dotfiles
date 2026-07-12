package net

import (
	"bufio"
	"net"
	"sync"
	"time"
)

const (
	// maxIdleConnsPerHost is the maximum number of idle connections kept per host.
	maxIdleConnsPerHost = 4
	// idleConnTimeout is how long an idle connection stays in the pool.
	idleConnTimeout = 90 * time.Second
)

// pooledConn wraps a net.Conn with its associated buffered reader so
// the reader's internal buffer is preserved across reuse.
type pooledConn struct {
	conn   net.Conn
	reader *bufio.Reader
	idleAt time.Time
}

// upstreamConnPool is a simple per-host connection pool for HTTP upstream
// connections. It saves a TCP handshake (~1 RTT) on repeated requests to
// the same host.
type upstreamConnPool struct {
	mu    sync.Mutex
	conns map[string][]*pooledConn
}

func newUpstreamConnPool() *upstreamConnPool {
	p := &upstreamConnPool{
		conns: make(map[string][]*pooledConn),
	}
	go p.reapLoop()
	return p
}

// get returns an idle connection for the host, or nil if none available.
func (p *upstreamConnPool) get(host string) *pooledConn {
	p.mu.Lock()
	defer p.mu.Unlock()

	conns := p.conns[host]
	for len(conns) > 0 {
		// Pop from the end (most recently used).
		pc := conns[len(conns)-1]
		conns = conns[:len(conns)-1]
		p.conns[host] = conns

		if time.Since(pc.idleAt) > idleConnTimeout {
			pc.conn.Close()
			continue
		}
		return pc
	}
	return nil
}

// put returns a connection to the pool for future reuse.
func (p *upstreamConnPool) put(host string, pc *pooledConn) {
	p.mu.Lock()
	defer p.mu.Unlock()

	conns := p.conns[host]
	if len(conns) >= maxIdleConnsPerHost {
		pc.conn.Close()
		return
	}
	pc.idleAt = time.Now()
	p.conns[host] = append(conns, pc)
}

// reapLoop periodically closes idle connections that have expired.
func (p *upstreamConnPool) reapLoop() {
	ticker := time.NewTicker(30 * time.Second)
	defer ticker.Stop()

	for range ticker.C {
		p.mu.Lock()
		now := time.Now()
		for host, conns := range p.conns {
			alive := conns[:0]
			for _, pc := range conns {
				if now.Sub(pc.idleAt) > idleConnTimeout {
					pc.conn.Close()
				} else {
					alive = append(alive, pc)
				}
			}
			if len(alive) == 0 {
				delete(p.conns, host)
			} else {
				p.conns[host] = alive
			}
		}
		p.mu.Unlock()
	}
}
