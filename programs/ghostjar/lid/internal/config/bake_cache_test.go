// Tests for bake_caches= kwarg (SPEC §lid.sandbox).
package config_test

import (
	"reflect"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

func TestBakeCachesParsed(t *testing.T) {
	p := loadOne(t, sb(`bake_caches = ["/var/cache/dnf", "/var/cache/apt"]`))
	want := []string{"/var/cache/dnf", "/var/cache/apt"}
	if !reflect.DeepEqual(p.BakeCaches, want) {
		t.Errorf("BakeCaches = %q, want %q", p.BakeCaches, want)
	}
}

func TestBakeCachesDefault(t *testing.T) {
	p := loadOne(t, sb())
	if p.BakeCaches != nil {
		t.Errorf("BakeCaches = %q, want nil", p.BakeCaches)
	}
}

func TestBakeCachesRejectsRelativePath(t *testing.T) {
	requireErrIs(t, sb(`bake_caches = ["var/cache/dnf"]`), config.ErrInvalidBakeCache)
}

func TestBakeCachesRejectsNonString(t *testing.T) {
	requireErrIs(t, sb(`bake_caches = [42]`), config.ErrInvalidBakeCache)
}

func TestBakeCachesEvalAndSpecificSentinel(t *testing.T) {
	requireErrIs(t, sb(`bake_caches = ["var/cache/dnf"]`), config.ErrEval, config.ErrInvalidBakeCache)
}
