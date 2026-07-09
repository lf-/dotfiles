// Tests for persist_claude= kwarg (SPEC §lid.sandbox). NOT frozen.
package config_test

import (
	"testing"
)

func TestPersistClaudeParsed(t *testing.T) {
	p := loadOne(t, sb(`persist_claude = True`))
	if !p.PersistClaude {
		t.Errorf("PersistClaude = false, want true")
	}
}

func TestPersistClaudeDefault(t *testing.T) {
	// Absent ⇒ false. Required for SPEC Invariant 7 (determinism).
	p := loadOne(t, sb())
	if p.PersistClaude {
		t.Errorf("PersistClaude = true, want false (zero value)")
	}
}
