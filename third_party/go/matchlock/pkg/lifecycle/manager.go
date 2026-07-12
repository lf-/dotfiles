package lifecycle

import (
	"errors"

	"github.com/jingkaihe/matchlock/pkg/state"
)

// VMManager wraps state lifecycle operations and ensures host resources are
// reconciled before metadata removal.
type VMManager struct {
	stateMgr    *state.Manager
	subnetAlloc *state.SubnetAllocator
	reconciler  *Reconciler
	forceOnGCVM bool
}

func NewVMManager() *VMManager {
	stateMgr := state.NewManager()
	return NewVMManagerWithDeps(stateMgr, state.NewSubnetAllocator())
}

func NewVMManagerWithDeps(stateMgr *state.Manager, subnetAlloc *state.SubnetAllocator) *VMManager {
	return &VMManager{
		stateMgr:    stateMgr,
		subnetAlloc: subnetAlloc,
		reconciler:  NewReconcilerWithManagers(stateMgr, subnetAlloc),
		forceOnGCVM: false,
	}
}

func (m *VMManager) List() ([]state.VMState, error) {
	return m.stateMgr.List()
}

func (m *VMManager) Kill(id string) error {
	return m.stateMgr.Kill(id)
}

func (m *VMManager) Remove(id string) error {
	if _, err := m.reconciler.ReconcileVM(id, m.forceOnGCVM); err != nil {
		return err
	}
	return m.stateMgr.Remove(id)
}

func (m *VMManager) Prune() ([]string, error) {
	states, err := m.stateMgr.List()
	if err != nil {
		return nil, err
	}

	var pruned []string
	var errs []error
	for _, st := range states {
		if st.Status != "crashed" && st.Status != "stopped" {
			continue
		}
		if _, err := m.reconciler.ReconcileVM(st.ID, m.forceOnGCVM); err != nil {
			errs = append(errs, err)
			continue
		}
		if err := m.stateMgr.Remove(st.ID); err == nil {
			pruned = append(pruned, st.ID)
		} else {
			errs = append(errs, err)
		}
	}

	if m.subnetAlloc != nil {
		if err := m.subnetAlloc.Cleanup(m.stateMgr); err != nil {
			errs = append(errs, err)
		}
	} else {
		if err := state.NewSubnetAllocator().Cleanup(m.stateMgr); err != nil {
			errs = append(errs, err)
		}
	}
	if len(errs) > 0 {
		return pruned, errors.Join(errs...)
	}
	return pruned, nil
}
