// Tests for SPEC.md §Go API Merge/Lookup and §Invariants 10 (merge/lookup
// laws): nil identities, project-over-global shadowing with order
// preservation, and profile resolution rules.
package config_test

import (
	"errors"
	"reflect"
	"testing"

	"pgregory.net/rapid"

	"jade.fyi/ghostjar/lid/internal/config"
)

func mkFile(prefix string, names ...string) *config.File {
	f := &config.File{}
	for _, n := range names {
		f.Profiles = append(f.Profiles, &config.Profile{Name: n, Image: prefix + "/" + n})
	}
	return f
}

func requireSameProfiles(t failer, got, want []*config.Profile) {
	if len(got) != len(want) {
		gotNames := make([]string, len(got))
		for i, p := range got {
			gotNames[i] = p.Name
		}
		wantNames := make([]string, len(want))
		for i, p := range want {
			wantNames[i] = p.Name
		}
		t.Fatalf("profile lists differ in length: got %v, want %v", gotNames, wantNames)
	}
	for i := range want {
		if !reflect.DeepEqual(got[i], want[i]) {
			t.Fatalf("profile[%d] = %+v, want %+v", i, got[i], want[i])
		}
	}
}

// Merge(nil, f) ≡ f ≡ Merge(f, nil): profile lists equal.
func TestMergeNilIdentity(t *testing.T) {
	f := mkFile("x", "a", "default", "b")
	for name, m := range map[string]*config.File{
		"global_nil":  config.Merge(nil, f),
		"project_nil": config.Merge(f, nil),
	} {
		if m == nil {
			t.Fatalf("%s: Merge returned nil for non-nil file", name)
		}
		requireSameProfiles(t, m.Profiles, f.Profiles)
	}
}

// Project profile with the same name replaces the global one entirely, in the
// global's position; project-only profiles follow in project order.
func TestMergeShadowingAndOrder(t *testing.T) {
	g := mkFile("global", "a", "b", "c")
	p := mkFile("project", "b", "d")
	m := config.Merge(g, p)
	want := []*config.Profile{
		{Name: "a", Image: "global/a"},
		{Name: "b", Image: "project/b"}, // replaced, no field merge
		{Name: "c", Image: "global/c"},
		{Name: "d", Image: "project/d"},
	}
	requireSameProfiles(t, m.Profiles, want)
}

func TestLookupByName(t *testing.T) {
	f := mkFile("x", "a", "b")
	p, err := f.Lookup("b")
	if err != nil {
		t.Fatalf("Lookup(b): %v", err)
	}
	if p == nil || p.Name != "b" || p.Image != "x/b" {
		t.Fatalf("Lookup(b) = %+v, want profile b", p)
	}
}

func TestLookupUnknown(t *testing.T) {
	f := mkFile("x", "a", "b")
	if _, err := f.Lookup("nope"); !errors.Is(err, config.ErrUnknownProfile) {
		t.Fatalf("Lookup(nope) error = %v, want ErrUnknownProfile", err)
	}
	// "default" absent and looked up by explicit name is unknown too.
	if _, err := f.Lookup("default"); !errors.Is(err, config.ErrUnknownProfile) {
		t.Fatalf("Lookup(default) error = %v, want ErrUnknownProfile", err)
	}
}

// Lookup(""): single-profile file resolves to that profile regardless of name.
func TestLookupEmptySingleProfile(t *testing.T) {
	f := mkFile("x", "only")
	p, err := f.Lookup("")
	if err != nil {
		t.Fatalf("Lookup(\"\"): %v", err)
	}
	if p == nil || p.Name != "only" {
		t.Fatalf("Lookup(\"\") = %+v, want profile %q", p, "only")
	}
}

// Lookup(""): resolves to the profile named "default" when present.
func TestLookupEmptyDefault(t *testing.T) {
	f := mkFile("x", "a", "default", "b")
	p, err := f.Lookup("")
	if err != nil {
		t.Fatalf("Lookup(\"\"): %v", err)
	}
	if p == nil || p.Name != "default" {
		t.Fatalf("Lookup(\"\") = %+v, want profile %q", p, "default")
	}
}

// Lookup(""): multi-profile file without "default" is ambiguous.
func TestLookupEmptyAmbiguous(t *testing.T) {
	f := mkFile("x", "a", "b")
	if _, err := f.Lookup(""); !errors.Is(err, config.ErrAmbiguousProfile) {
		t.Fatalf("Lookup(\"\") error = %v, want ErrAmbiguousProfile", err)
	}
}

// SPEC invariant 10 as a property over random name sets.
func TestPropMergeLookupLaws(t *testing.T) {
	pool := []string{"a", "b", "c", "d", "e", "default"}
	rapid.Check(t, func(t *rapid.T) {
		gn := rapid.SliceOfNDistinct(rapid.SampledFrom(pool), 0, len(pool), rapid.ID[string]).Draw(t, "gn")
		pn := rapid.SliceOfNDistinct(rapid.SampledFrom(pool), 0, len(pool), rapid.ID[string]).Draw(t, "pn")
		g := mkFile("global", gn...)
		p := mkFile("project", pn...)

		// Nil identities.
		for _, f := range []*config.File{g, p} {
			for _, m := range []*config.File{config.Merge(nil, f), config.Merge(f, nil)} {
				if m == nil {
					t.Fatalf("Merge with nil returned nil for non-nil file")
				}
				requireSameProfiles(t, m.Profiles, f.Profiles)
			}
		}

		// Shadowing + order.
		merged := config.Merge(g, p)
		if merged == nil {
			t.Fatalf("Merge returned nil for non-nil inputs")
		}
		byName := map[string]*config.Profile{}
		for i, n := range pn {
			byName[n] = p.Profiles[i]
		}
		inGlobal := map[string]bool{}
		var want []*config.Profile
		for i, n := range gn {
			inGlobal[n] = true
			if pp, ok := byName[n]; ok {
				want = append(want, pp) // project shadows global
			} else {
				want = append(want, g.Profiles[i])
			}
		}
		for i, n := range pn {
			if !inGlobal[n] {
				want = append(want, p.Profiles[i])
			}
		}
		requireSameProfiles(t, merged.Profiles, want)

		// Lookup by explicit name always finds the merged profile.
		for _, prof := range merged.Profiles {
			got, err := merged.Lookup(prof.Name)
			if err != nil {
				t.Fatalf("Lookup(%q): %v", prof.Name, err)
			}
			if !reflect.DeepEqual(got, prof) {
				t.Fatalf("Lookup(%q) = %+v, want %+v", prof.Name, got, prof)
			}
		}
		if _, err := merged.Lookup("no_such_profile_zz"); !errors.Is(err, config.ErrUnknownProfile) {
			t.Fatalf("Lookup of missing name: err = %v, want ErrUnknownProfile", err)
		}

		// Lookup("") laws.
		hasDefault := false
		for _, prof := range merged.Profiles {
			if prof.Name == "default" {
				hasDefault = true
			}
		}
		got, err := merged.Lookup("")
		switch {
		case hasDefault:
			if err != nil {
				t.Fatalf("Lookup(\"\") with default present: %v", err)
			}
			if got == nil || got.Name != "default" {
				t.Fatalf("Lookup(\"\") = %+v, want profile named default", got)
			}
		case len(merged.Profiles) == 1:
			if err != nil {
				t.Fatalf("Lookup(\"\") on single-profile file: %v", err)
			}
			if !reflect.DeepEqual(got, merged.Profiles[0]) {
				t.Fatalf("Lookup(\"\") = %+v, want the single profile %+v", got, merged.Profiles[0])
			}
		case len(merged.Profiles) >= 2:
			if !errors.Is(err, config.ErrAmbiguousProfile) {
				t.Fatalf("Lookup(\"\") on %d profiles without default: err = %v, want ErrAmbiguousProfile",
					len(merged.Profiles), err)
			}
		default:
			// Zero profiles: SPEC does not pin which sentinel applies; left
			// unasserted deliberately.
		}
	})
}
