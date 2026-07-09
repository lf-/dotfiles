// Tests for lid.mount / lid.seed / setup=. NOT frozen — may evolve with the
// feature.
package config_test

import (
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

func TestMountParsed(t *testing.T) {
	p := loadOne(t, sb(`mounts = [lid.mount(host = "./data", guest = "/workspace/data")]`))
	if len(p.Mounts) != 1 {
		t.Fatalf("expected 1 mount, got %d", len(p.Mounts))
	}
	m := p.Mounts[0]
	if m.HostPath != "./data" || m.GuestPath != "/workspace/data" {
		t.Errorf("mount paths = %+v", m)
	}
	if m.Mode != config.MountRW {
		t.Errorf("mount mode = %q, want rw (default)", m.Mode)
	}
}

func TestMountModeRO(t *testing.T) {
	p := loadOne(t, sb(`mounts = [lid.mount(host = "~/cfg", guest = "/workspace/cfg", mode = "ro")]`))
	if p.Mounts[0].Mode != config.MountRO {
		t.Errorf("mount mode = %q, want ro", p.Mounts[0].Mode)
	}
	if p.Mounts[0].HostPath != "~/cfg" {
		t.Errorf("host path should be kept verbatim, got %q", p.Mounts[0].HostPath)
	}
}

func TestMountRejectsRelativeGuest(t *testing.T) {
	requireErrIs(t, sb(`mounts = [lid.mount(host = "./x", guest = "data")]`), config.ErrInvalidMount)
}

func TestMountRejectsGuestOutsideWorkspace(t *testing.T) {
	requireErrIs(t, sb(`mounts = [lid.mount(host = "./x", guest = "/home/node/.claude")]`), config.ErrInvalidMount)
}

func TestMountRejectsBadMode(t *testing.T) {
	requireErrIs(t, sb(`mounts = [lid.mount(host = "./x", guest = "/workspace/x", mode = "wat")]`), config.ErrInvalidMount)
}

func TestMountRejectsEmptyHost(t *testing.T) {
	requireErrIs(t, sb(`mounts = [lid.mount(host = "", guest = "/workspace/x")]`), config.ErrInvalidMount)
}

func TestMountUnderCustomWorkspace(t *testing.T) {
	p := loadOne(t, sb(`workspace = "/work"`, `mount_cwd = "off"`,
		`mounts = [lid.mount(host = "./x", guest = "/work/x")]`))
	if len(p.Mounts) != 1 || p.Mounts[0].GuestPath != "/work/x" {
		t.Errorf("mount under custom workspace not parsed: %+v", p.Mounts)
	}
}

func TestMountRejectsNonMountValue(t *testing.T) {
	// A bare string in mounts=[...] is not a lid.mount(...) value.
	requireErrIs(t, sb(`mounts = ["/workspace/x"]`), config.ErrEval)
}

func TestSeedParsed(t *testing.T) {
	p := loadOne(t, sb(`seed = [lid.seed(host = "~/.claude", guest = "/home/node/.claude")]`))
	if len(p.Seeds) != 1 {
		t.Fatalf("expected 1 seed, got %d", len(p.Seeds))
	}
	s := p.Seeds[0]
	if s.HostPath != "~/.claude" || s.GuestPath != "/home/node/.claude" {
		t.Errorf("seed = %+v", s)
	}
}

func TestSeedRejectsRelativeGuest(t *testing.T) {
	requireErrIs(t, sb(`seed = [lid.seed(host = "~/.claude", guest = ".claude")]`), config.ErrInvalidMount)
}

func TestSeedRejectsNonSeedValue(t *testing.T) {
	requireErrIs(t, sb(`seed = [lid.mount(host = "./x", guest = "/workspace/x")]`), config.ErrEval)
}

func TestSetupParsed(t *testing.T) {
	p := loadOne(t, sb(`setup = ["npm install -g @anthropic-ai/claude-code", "apt-get update"]`))
	if len(p.Setup) != 2 || p.Setup[0] != "npm install -g @anthropic-ai/claude-code" {
		t.Errorf("setup = %v", p.Setup)
	}
}

func TestSetupRejectsNonString(t *testing.T) {
	requireErrIs(t, sb(`setup = [42]`), config.ErrBadCommand)
}

func TestMountSeedSetupDefaultNil(t *testing.T) {
	// A profile without the new kwargs must leave the new fields nil (frozen
	// property-test determinism relies on this).
	p := loadOne(t, sb())
	if p.Mounts != nil || p.Seeds != nil || p.Setup != nil {
		t.Errorf("expected nil Mounts/Seeds/Setup, got %+v / %+v / %+v", p.Mounts, p.Seeds, p.Setup)
	}
}
