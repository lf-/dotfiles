package lifecycle

import (
	"github.com/jingkaihe/matchlock/internal/errx"
)

var allowedTransitions = map[Phase]map[Phase]bool{
	PhaseCreating: {
		PhaseCreating:     true,
		PhaseCreated:      true,
		PhaseCreateFailed: true,
		PhaseCleaning:     true,
	},
	PhaseCreated: {
		PhaseCreated:  true,
		PhaseStarting: true,
		PhaseStopping: true,
		PhaseCleaning: true,
	},
	PhaseStarting: {
		PhaseStarting:    true,
		PhaseRunning:     true,
		PhaseStartFailed: true,
		PhaseStopping:    true,
		PhaseCleaning:    true,
	},
	PhaseRunning: {
		PhaseRunning:  true,
		PhaseStopping: true,
		PhaseCleaning: true,
	},
	PhaseStopping: {
		PhaseStopping:   true,
		PhaseStopped:    true,
		PhaseStopFailed: true,
		PhaseCleaning:   true,
	},
	PhaseStopped: {
		PhaseStopped:  true,
		PhaseCleaning: true,
		PhaseCleaned:  true,
	},
	PhaseCleaning: {
		PhaseCleaning:      true,
		PhaseCleaned:       true,
		PhaseCleanupFailed: true,
	},
	PhaseCreateFailed: {
		PhaseCreateFailed:  true,
		PhaseCleaning:      true,
		PhaseCleanupFailed: true,
	},
	PhaseStartFailed: {
		PhaseStartFailed:   true,
		PhaseStopping:      true,
		PhaseCleaning:      true,
		PhaseCleanupFailed: true,
	},
	PhaseStopFailed: {
		PhaseStopFailed:    true,
		PhaseCleaning:      true,
		PhaseCleanupFailed: true,
	},
	PhaseCleanupFailed: {
		PhaseCleanupFailed: true,
		PhaseCleaning:      true,
		PhaseCleaned:       true,
	},
	PhaseCleaned: {
		PhaseCleaned: true,
	},
}

func validateTransition(from, to Phase) error {
	if from == "" {
		from = PhaseCreating
	}
	if to == "" {
		return errx.With(ErrInvalidPhase, " empty target phase from %q", from)
	}
	allowed := allowedTransitions[from]
	if len(allowed) == 0 || !allowed[to] {
		return errx.With(ErrInvalidPhase, " %q -> %q", from, to)
	}
	return nil
}
