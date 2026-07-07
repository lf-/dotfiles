package runner

import (
	"strings"
	"testing"
)

// fakeFS builds exists/readFile funcs over a set of file paths.
func fakeFS(files map[string]string) (func(string) (bool, error), func(string) ([]byte, error)) {
	exists := func(p string) (bool, error) {
		_, ok := files[p]
		return ok, nil
	}
	read := func(p string) ([]byte, error) {
		return []byte(files[p]), nil
	}
	return exists, read
}

func TestFindProjectConfigWalksUp(t *testing.T) {
	exists, _ := fakeFS(map[string]string{
		"/home/me/proj/lid.star": "x",
	})
	got, err := findProjectConfig("/home/me/proj/sub/dir", "/home/me", exists)
	if err != nil {
		t.Fatal(err)
	}
	if got != "/home/me/proj/lid.star" {
		t.Errorf("got %q", got)
	}
}

func TestFindProjectConfigStopsAtHome(t *testing.T) {
	// A config above $HOME must be ignored.
	exists, _ := fakeFS(map[string]string{
		"/home/lid.star": "x",
	})
	got, err := findProjectConfig("/home/me/proj", "/home/me", exists)
	if err != nil {
		t.Fatal(err)
	}
	if got != "" {
		t.Errorf("should not find config above home, got %q", got)
	}
}

func TestFindProjectConfigChecksHomeItself(t *testing.T) {
	exists, _ := fakeFS(map[string]string{
		"/home/me/lid.star": "x",
	})
	got, err := findProjectConfig("/home/me/proj", "/home/me", exists)
	if err != nil {
		t.Fatal(err)
	}
	if got != "/home/me/lid.star" {
		t.Errorf("home config should be found, got %q", got)
	}
}

func TestFindProjectConfigStopsAtRoot(t *testing.T) {
	// cwd outside home: walk stops at filesystem root without finding anything.
	exists, _ := fakeFS(map[string]string{})
	got, err := findProjectConfig("/tmp/work", "/home/me", exists)
	if err != nil {
		t.Fatal(err)
	}
	if got != "" {
		t.Errorf("got %q", got)
	}
}

func TestGlobalConfigPath(t *testing.T) {
	if got := globalConfigPath("/home/me", ""); got != "/home/me/.config/lid/lid.star" {
		t.Errorf("default xdg: %q", got)
	}
	if got := globalConfigPath("/home/me", "/xdg"); got != "/xdg/lid/lid.star" {
		t.Errorf("explicit xdg: %q", got)
	}
	if got := globalConfigPath("", ""); got != "" {
		t.Errorf("no home/xdg should be empty, got %q", got)
	}
}

func TestDiscoverMissingBothErrors(t *testing.T) {
	exists, read := fakeFS(map[string]string{})
	env := discoverEnv{
		cwd:      "/home/me/proj",
		home:     "/home/me",
		exists:   exists,
		readFile: read,
	}
	_, err := env.discover()
	if err == nil || !strings.Contains(err.Error(), "lid.star") {
		t.Fatalf("expected friendly missing-config error, got %v", err)
	}
}

func TestDiscoverConfigOverrideMissing(t *testing.T) {
	exists, read := fakeFS(map[string]string{})
	env := discoverEnv{
		cwd:            "/home/me/proj",
		home:           "/home/me",
		configOverride: "/nope/lid.star",
		exists:         exists,
		readFile:       read,
	}
	_, err := env.discover()
	if err == nil || !strings.Contains(err.Error(), "/nope/lid.star") {
		t.Fatalf("expected error naming override path, got %v", err)
	}
}

func TestDiscoverRecordsPaths(t *testing.T) {
	// Both configs present. config.LoadFile is not yet implemented (panics),
	// so this test only exercises path selection by short-circuiting before
	// load — we verify via findProjectConfig + globalConfigPath directly to
	// avoid invoking the unimplemented loader.
	exists, _ := fakeFS(map[string]string{
		"/home/me/proj/lid.star":           "x",
		"/home/me/.config/lid/lid.star":    "y",
		"/home/me/proj/sub/unrelated.star": "z",
	})
	proj, err := findProjectConfig("/home/me/proj/sub", "/home/me", exists)
	if err != nil {
		t.Fatal(err)
	}
	if proj != "/home/me/proj/lid.star" {
		t.Errorf("project path = %q", proj)
	}
	if g := globalConfigPath("/home/me", ""); g != "/home/me/.config/lid/lid.star" {
		t.Errorf("global path = %q", g)
	}
}
