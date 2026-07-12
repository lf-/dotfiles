//go:build linux

package net

import (
	"net"
	"testing"

	"github.com/google/nftables/binaryutil"
	"github.com/google/nftables/expr"
	"github.com/stretchr/testify/require"
	"golang.org/x/sys/unix"
)

func TestNewNFTablesRulesParsesDNSIPv4Servers(t *testing.T) {
	rules := NewNFTablesRules(
		"tap0",
		"192.168.100.1",
		8080,
		8443,
		0,
		[]string{"1.1.1.1", "8.8.8.8:53", "resolver.local", "[2606:4700:4700::1111]:53"},
	)

	require.Equal(t, []net.IP{
		net.IPv4(1, 1, 1, 1).To4(),
		net.IPv4(8, 8, 8, 8).To4(),
	}, rules.dnsServers)
}

func TestBuildDNSForwarderInputAcceptRule(t *testing.T) {
	rules := &NFTablesRules{
		tapInterface: "tap0",
		gatewayIP:    net.IPv4(192, 168, 100, 1).To4(),
	}

	exprs := rules.buildDNSForwarderInputAcceptRule(5353)
	require.Len(t, exprs, 9)

	iifMeta, ok := exprs[0].(*expr.Meta)
	require.True(t, ok)
	require.Equal(t, expr.MetaKeyIIFNAME, iifMeta.Key)

	iifCmp, ok := exprs[1].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, ifname("tap0"), iifCmp.Data)

	protoMeta, ok := exprs[2].(*expr.Meta)
	require.True(t, ok)
	require.Equal(t, expr.MetaKeyL4PROTO, protoMeta.Key)

	protoCmp, ok := exprs[3].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, []byte{unix.IPPROTO_UDP}, protoCmp.Data)

	dstIPCmp, ok := exprs[5].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, []byte(net.IPv4(192, 168, 100, 1).To4()), dstIPCmp.Data)

	dstPortCmp, ok := exprs[7].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, binaryutil.BigEndian.PutUint16(5353), dstPortCmp.Data)

	verdict, ok := exprs[8].(*expr.Verdict)
	require.True(t, ok)
	require.Equal(t, expr.VerdictAccept, verdict.Kind)
}

func TestBuildDNSForwarderOutputAcceptRule(t *testing.T) {
	rules := &NFTablesRules{}

	exprs := rules.buildDNSForwarderOutputAcceptRule(net.IPv4(8, 8, 8, 8))
	require.Len(t, exprs, 7)

	protoMeta, ok := exprs[0].(*expr.Meta)
	require.True(t, ok)
	require.Equal(t, expr.MetaKeyL4PROTO, protoMeta.Key)

	protoCmp, ok := exprs[1].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, []byte{unix.IPPROTO_UDP}, protoCmp.Data)

	dstIPCmp, ok := exprs[3].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, []byte(net.IPv4(8, 8, 8, 8).To4()), dstIPCmp.Data)

	dstPortCmp, ok := exprs[5].(*expr.Cmp)
	require.True(t, ok)
	require.Equal(t, binaryutil.BigEndian.PutUint16(53), dstPortCmp.Data)

	verdict, ok := exprs[6].(*expr.Verdict)
	require.True(t, ok)
	require.Equal(t, expr.VerdictAccept, verdict.Kind)
}
