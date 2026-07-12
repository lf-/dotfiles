//go:build darwin

package lifecycle

func (r *Reconciler) reconcilePlatform(rec *Record, store *Store, report *ReconcileReport) error {
	_ = store.MarkCleanup("platform_cleanup", nil)
	return nil
}
