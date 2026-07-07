package runner

import (
	"errors"
	"fmt"
	"io/fs"
	"os"
	"path/filepath"

	"jade.fyi/ghostjar/lid/internal/config"
)

// Discovery records where each config came from and the merged result, so the
// CLI can report provenance for `lid ls` / `lid check`.
type Discovery struct {
	GlobalPath  string // "" when no global config exists
	ProjectPath string // "" when no project config exists
	Global      *config.File
	Project     *config.File
	Merged      *config.File
}

// DiscoverOptions tunes config discovery.
type DiscoverOptions struct {
	// ConfigOverride, when set, replaces project-config discovery: this exact
	// path is used as the project config (and must exist).
	ConfigOverride string
}

// Discover finds and loads the global and project configs relative to cwd,
// then merges them. Per SPEC.md, file discovery/merging is CLI-layer I/O.
func Discover(cwd string, opts DiscoverOptions) (*Discovery, error) {
	env := discoverEnv{
		cwd:            cwd,
		home:           os.Getenv("HOME"),
		xdgConfigHome:  os.Getenv("XDG_CONFIG_HOME"),
		configOverride: opts.ConfigOverride,
		exists:         fileExists,
		readFile:       os.ReadFile,
	}
	return env.discover()
}

// discoverEnv abstracts the host so discovery path logic is unit-testable with
// an injected filesystem root and env values.
type discoverEnv struct {
	cwd            string
	home           string
	xdgConfigHome  string
	configOverride string
	exists         func(path string) (bool, error)
	readFile       func(path string) ([]byte, error)
}

func fileExists(path string) (bool, error) {
	_, err := os.Stat(path)
	if err == nil {
		return true, nil
	}
	if errors.Is(err, fs.ErrNotExist) {
		return false, nil
	}
	return false, err
}

func (e discoverEnv) discover() (*Discovery, error) {
	d := &Discovery{}

	globalPath := globalConfigPath(e.home, e.xdgConfigHome)
	if globalPath != "" {
		ok, err := e.exists(globalPath)
		if err != nil {
			return nil, err
		}
		if ok {
			f, err := e.load(globalPath)
			if err != nil {
				return nil, err
			}
			d.GlobalPath = globalPath
			d.Global = f
		}
	}

	var projectPath string
	if e.configOverride != "" {
		ok, err := e.exists(e.configOverride)
		if err != nil {
			return nil, err
		}
		if !ok {
			return nil, fmt.Errorf("config file not found: %s", e.configOverride)
		}
		projectPath = e.configOverride
	} else {
		p, err := findProjectConfig(e.cwd, e.home, e.exists)
		if err != nil {
			return nil, err
		}
		projectPath = p
	}
	if projectPath != "" {
		f, err := e.load(projectPath)
		if err != nil {
			return nil, err
		}
		d.ProjectPath = projectPath
		d.Project = f
	}

	if d.Global == nil && d.Project == nil {
		where := globalPath
		if where == "" {
			where = "~/.config/lid/lid.star"
		}
		return nil, fmt.Errorf("no lid.star found: create ./lid.star in your project, or %s", where)
	}

	d.Merged = config.Merge(d.Global, d.Project)
	return d, nil
}

func (e discoverEnv) load(path string) (*config.File, error) {
	src, err := e.readFile(path)
	if err != nil {
		return nil, fmt.Errorf("read %s: %w", path, err)
	}
	f, err := config.LoadFile(path, src)
	if err != nil {
		return nil, fmt.Errorf("%s: %w", path, err)
	}
	return f, nil
}

// globalConfigPath resolves ${XDG_CONFIG_HOME:-$HOME/.config}/lid/lid.star.
// Returns "" when neither XDG_CONFIG_HOME nor HOME is set.
func globalConfigPath(home, xdgConfigHome string) string {
	base := xdgConfigHome
	if base == "" {
		if home == "" {
			return ""
		}
		base = filepath.Join(home, ".config")
	}
	return filepath.Join(base, "lid", "lid.star")
}

// findProjectConfig walks up from cwd looking for lid.star, stopping after it
// reaches $HOME (configs above home are ignored) or the filesystem root.
// Returns "" when none is found.
func findProjectConfig(cwd, home string, exists func(string) (bool, error)) (string, error) {
	dir := cwd
	for {
		candidate := filepath.Join(dir, "lid.star")
		ok, err := exists(candidate)
		if err != nil {
			return "", err
		}
		if ok {
			return candidate, nil
		}
		if dir == home {
			break
		}
		parent := filepath.Dir(dir)
		if parent == dir {
			break // filesystem root
		}
		dir = parent
	}
	return "", nil
}
