//go:build linux

package lifecycle

import (
	"errors"
	"net"
	"syscall"

	"github.com/google/nftables"
	"github.com/jingkaihe/matchlock/internal/errx"
	linuxvm "github.com/jingkaihe/matchlock/pkg/vm/linux"
)

func (r *Reconciler) reconcilePlatform(rec *Record, store *Store, report *ReconcileReport) error {
	var errs []error
	var tapErrs []error

	for _, tap := range tapNameCandidates(rec.VMID, rec.Resources.TAPName) {
		if _, err := net.InterfaceByName(tap); err != nil {
			continue
		}
		if err := linuxvm.DeleteInterface(tap); err != nil {
			report.addFailed("tap_delete:"+tap, err)
			wrapped := errx.Wrap(ErrReconcileTap, err)
			errs = append(errs, wrapped)
			tapErrs = append(tapErrs, wrapped)
			continue
		}
		report.addCleaned("tap_delete:" + tap)
	}
	_ = store.MarkCleanup("tap_delete", errors.Join(tapErrs...))

	tableCandidates := make([]string, 0, 4)
	addTable := func(name string) {
		if name == "" {
			return
		}
		for _, existing := range tableCandidates {
			if existing == name {
				return
			}
		}
		tableCandidates = append(tableCandidates, name)
	}
	addTable(rec.Resources.FirewallTable)
	addTable(rec.Resources.NATTable)
	for _, tap := range tapNameCandidates(rec.VMID, rec.Resources.TAPName) {
		addTable("matchlock_" + tap)
		addTable("matchlock_nat_" + tap)
	}

	var tableErrs []error
	for _, table := range tableCandidates {
		if err := deleteNFTTable(table); err != nil {
			report.addFailed("nft_table_delete:"+table, err)
			wrapped := errx.With(ErrReconcileTable, " %s: %w", table, err)
			errs = append(errs, wrapped)
			tableErrs = append(tableErrs, wrapped)
			continue
		}
		report.addCleaned("nft_table_delete:" + table)
	}
	_ = store.MarkCleanup("nftables_cleanup", errors.Join(tableErrs...))

	if len(errs) > 0 {
		return errors.Join(errs...)
	}
	return nil
}

func deleteNFTTable(tableName string) error {
	conn, err := nftables.New()
	if err != nil {
		if errors.Is(err, syscall.EPERM) || errors.Is(err, syscall.EACCES) {
			return nil
		}
		return err
	}
	tables, err := conn.ListTables()
	if err != nil {
		if errors.Is(err, syscall.EPERM) || errors.Is(err, syscall.EACCES) {
			return nil
		}
		return err
	}

	found := false
	for _, t := range tables {
		if t.Name == tableName {
			conn.DelTable(t)
			found = true
		}
	}
	if !found {
		return nil
	}
	if err := conn.Flush(); err != nil {
		if errors.Is(err, syscall.EPERM) || errors.Is(err, syscall.EACCES) {
			return nil
		}
		return err
	}
	return nil
}
