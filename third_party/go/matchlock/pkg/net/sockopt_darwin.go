//go:build darwin

package net

import (
	"os"
	"syscall"
)

// setSocketBufferSizes increases the SO_SNDBUF and SO_RCVBUF on the socket pair
// FD. Larger buffers prevent frame drops when the VM sends bursts of packets
// faster than the gVisor stack can consume them.
func setSocketBufferSizes(f *os.File) {
	fd := int(f.Fd())
	syscall.SetsockoptInt(fd, syscall.SOL_SOCKET, syscall.SO_SNDBUF, socketBufSize)
	syscall.SetsockoptInt(fd, syscall.SOL_SOCKET, syscall.SO_RCVBUF, socketBufSize)
}
