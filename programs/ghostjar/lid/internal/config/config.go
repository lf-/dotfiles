// Package config evaluates lid's starlark configuration into validated,
// normalized profiles. It is pure: no filesystem, env, or clock access.
// SPEC.md in the repo root is normative for this package.
package config

import "fmt"

// MountMode controls how the working directory is mounted into the guest.
type MountMode string

const (
	MountRW  MountMode = "rw"
	MountRO  MountMode = "ro"
	MountOff MountMode = "off"
)

// SourceKind identifies where a secret's value comes from at launch time.
type SourceKind string

const (
	SourceEnv            SourceKind = "env"
	SourceCmd            SourceKind = "cmd"
	SourceLiteral        SourceKind = "literal"
	SourceGitHub         SourceKind = "github"
	SourceAnthropicOAuth SourceKind = "anthropic_oauth"
	SourceKeychain       SourceKind = "keychain"
	SourceGitHubApp      SourceKind = "github_app"
)

// Source describes how the runner obtains a secret value on the host.
type Source struct {
	Kind      SourceKind
	EnvName   string           // Kind == SourceEnv
	Cmd       []string         // Kind == SourceCmd
	Literal   string           // Kind == SourceLiteral
	Path      string           // Kind == SourceAnthropicOAuth; credentials file path, "" = auto-detect
	Service   string           // Kind == SourceKeychain; store item/service name
	Account   string           // Kind == SourceKeychain; optional account, "" = unspecified
	GitHubApp *GitHubAppSource // Kind == SourceGitHubApp
}

// GitHubAppSource carries the config for a github_app secret. PrivateKey is a
// nested credential source (typically Kind == SourceKeychain) naming where the
// App's PEM key lives; it is resolved lazily by the runner, never at config time.
type GitHubAppSource struct {
	AppID          int64
	InstallationID int64             // 0 ⇒ auto-discover from Repositories
	PrivateKey     Source            // credential source for the PEM
	Repositories   []string          // "owner/repo"; nil ⇒ installation default
	Permissions    map[string]string // nil ⇒ installation default
}

// SecretSpec is a secret to inject via matchlock MITM replacement.
type SecretSpec struct {
	Name          string
	Source        Source
	Hosts         []string // normalized
	GitCredential bool
}

// MountSpec is a live host-directory mount into the guest (VFS, workspace-
// confined). HostPath is kept verbatim from config (may be "~"-prefixed or
// relative); the runner resolves it at launch.
type MountSpec struct {
	GuestPath string
	HostPath  string
	Mode      MountMode // "rw" | "ro"
}

// SeedSpec copies a host file/dir into an arbitrary guest path at boot. Used
// for config the agent reads from $HOME (outside the workspace, so a live VFS
// mount cannot reach it). Snapshot semantics — in-guest edits are not written
// back to the host. HostPath is kept verbatim; the runner resolves it at launch.
type SeedSpec struct {
	GuestPath string
	HostPath  string
}

// HostIP is a static hosts-file entry for the guest.
type HostIP struct{ Host, IP string }

// Network is the compiled network posture of a profile.
type Network struct {
	NoNetwork       bool
	AllowAll        bool
	AllowedHosts    []string // normalized union; nil iff NoNetwork or (AllowAll && no secret hosts)
	BlockPrivateIPs bool
	AddHosts        []HostIP // sorted by Host
	DNS             []string
}

// Profile is a fully validated and normalized sandbox definition.
type Profile struct {
	Name           string
	Image          string
	CPUs           float64
	MemoryMB       int
	DiskMB         int
	TimeoutSeconds int
	Workspace      string
	MountCwd       MountMode
	Command        []string
	Env            map[string]string
	Net            Network
	Secrets        []SecretSpec
	Mounts         []MountSpec // live VFS mounts (guest under Workspace)
	Seeds          []SeedSpec  // host files copied into the guest at boot
	Setup          []string    // build-time shell commands for `lid bake`
	BakeCaches     []string    // absolute paths mounted as BuildKit caches during `lid bake`
	Init           []string    // root shell commands run at VM boot before the guest user is set up
	Privileged     bool        // skip in-guest security restrictions (seccomp, cap drop, no_new_privs)
	PersistClaude  bool        // persist Claude conversation state across runs via a per-project host store
}

// GlobalConfig holds host-level settings from lid.config() that apply to all
// profiles. Zero value means all features disabled.
type GlobalConfig struct {
	// UseUserns activates matchlock's user+network namespace mode (Linux only;
	// silently ignored on non-Linux hosts).
	UseUserns bool
}

// File is the result of evaluating one starlark config file.
type File struct {
	Config   GlobalConfig
	Profiles []*Profile // registration order
}

// LoadFile evaluates starlark source into validated profiles. filename is
// used for error messages only; no filesystem access occurs.
func LoadFile(filename string, src []byte) (*File, error) {
	return loadFile(filename, src)
}

// Merge overlays project over global (either may be nil). Project profiles
// replace same-named global profiles; otherwise global registration order is
// kept, followed by project-only profiles in registration order.
func Merge(global, project *File) *File {
	merged := &File{}
	if global != nil {
		merged.Config = global.Config
	}
	if project != nil {
		merged.Config.UseUserns = merged.Config.UseUserns || project.Config.UseUserns
	}
	byName := make(map[string]*Profile)
	if project != nil {
		for _, p := range project.Profiles {
			byName[p.Name] = p
		}
	}
	inGlobal := make(map[string]bool)
	if global != nil {
		for _, g := range global.Profiles {
			inGlobal[g.Name] = true
			if p, ok := byName[g.Name]; ok {
				merged.Profiles = append(merged.Profiles, p) // project shadows global
			} else {
				merged.Profiles = append(merged.Profiles, g)
			}
		}
	}
	if project != nil {
		for _, p := range project.Profiles {
			if !inGlobal[p.Name] {
				merged.Profiles = append(merged.Profiles, p)
			}
		}
	}
	return merged
}

// Lookup resolves a profile by name. name == "" resolves to the profile
// named "default", or, if the file has exactly one profile, that profile.
func (f *File) Lookup(name string) (*Profile, error) {
	if name == "" {
		for _, p := range f.Profiles {
			if p.Name == "default" {
				return p, nil
			}
		}
		switch len(f.Profiles) {
		case 0:
			return nil, fmt.Errorf("%w: no profiles defined", ErrUnknownProfile)
		case 1:
			return f.Profiles[0], nil
		default:
			return nil, fmt.Errorf("%w: %d profiles and none named %q", ErrAmbiguousProfile, len(f.Profiles), "default")
		}
	}
	for _, p := range f.Profiles {
		if p.Name == name {
			return p, nil
		}
	}
	return nil, fmt.Errorf("%w: %q", ErrUnknownProfile, name)
}
