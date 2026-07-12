package lifecycle

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestValidateTransition(t *testing.T) {
	require.NoError(t, validateTransition(PhaseCreating, PhaseCreated))
	require.NoError(t, validateTransition(PhaseCreated, PhaseStarting))
	require.NoError(t, validateTransition(PhaseRunning, PhaseStopping))
	require.NoError(t, validateTransition(PhaseCleaning, PhaseCleaned))
	require.NoError(t, validateTransition("", PhaseCreating))
	require.Error(t, validateTransition(PhaseRunning, PhaseCreated))
	require.Error(t, validateTransition(PhaseCleaned, PhaseRunning))
}
