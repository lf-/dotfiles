package config

import (
	"fmt"
	"net/netip"
	"path"
	"regexp"
	"sort"
	"strconv"
	"strings"
	"time"

	"go.starlark.net/starlark"
	"go.starlark.net/starlarkstruct"
	"go.starlark.net/syntax"
)

// maxExecutionSteps is the starlark computation budget per file (SPEC
// §Evaluation environment).
const maxExecutionSteps = 10_000_000

// claudeSubscriptionDefaultHosts is the normative default host list for
// lid.claude_subscription (SPEC §lid.claude_subscription).
var claudeSubscriptionDefaultHosts = []string{
	"api.anthropic.com",
	"platform.claude.com",
}

// githubDefaultHosts is the normative default host list of lid.github and
// lid.hosts.github (SPEC §lid.github).
var githubDefaultHosts = []string{
	"github.com",
	"api.github.com",
	"codeload.github.com",
	"objects.githubusercontent.com",
	"raw.githubusercontent.com",
	"*.githubusercontent.com",
	"ghcr.io",
}

// hostPresets is the normative table of SPEC §lid.hosts.
var hostPresets = map[string][]string{
	"anthropic": {"api.anthropic.com", "statsig.anthropic.com"},
	"github":    githubDefaultHosts,
	"pypi":      {"pypi.org", "files.pythonhosted.org"},
	"npm":       {"registry.npmjs.org"},
	"crates":    {"crates.io", "static.crates.io", "index.crates.io"},
	"golang":    {"proxy.golang.org", "sum.golang.org", "storage.googleapis.com"},
	"debian":    {"deb.debian.org", "security.debian.org"},
	"ubuntu":    {"archive.ubuntu.com", "security.ubuntu.com", "ports.ubuntu.com"},
	"alpine":    {"dl-cdn.alpinelinux.org"},
	"nix":       {"cache.nixos.org", "channels.nixos.org", "nixos.org"},
}

// hostsStruct is the frozen lid.hosts struct of frozen list[str] members.
// Frozen values are immutable and safe to share across LoadFile calls.
var hostsStruct = func() *starlarkstruct.Struct {
	members := make(starlark.StringDict, len(hostPresets))
	for name, hosts := range hostPresets {
		elems := make([]starlark.Value, len(hosts))
		for i, h := range hosts {
			elems[i] = starlark.String(h)
		}
		members[name] = starlark.NewList(elems)
	}
	s := starlarkstruct.FromStringDict(starlarkstruct.Default, members)
	s.Freeze()
	return s
}()

// errf wraps a sentinel with a detail message. LoadFile additionally wraps
// everything escaping starlark in ErrEval, so both sentinels match.
func errf(sentinel error, format string, args ...any) error {
	return fmt.Errorf("%w: %s", sentinel, fmt.Sprintf(format, args...))
}

// ---------------------------------------------------------------------------
// Opaque starlark values returned by lid.network / lid.secret / lid.github.
// ---------------------------------------------------------------------------

// secretValue is the opaque result of lid.secret / lid.github. It is
// immutable after construction.
type secretValue struct {
	spec SecretSpec
}

func (s *secretValue) String() string        { return "<lid.secret " + s.spec.Name + ">" }
func (s *secretValue) Type() string          { return "lid.secret" }
func (s *secretValue) Freeze()               {}
func (s *secretValue) Truth() starlark.Bool  { return starlark.True }
func (s *secretValue) Hash() (uint32, error) { return 0, fmt.Errorf("unhashable type: lid.secret") }

// networkValue is the opaque, pre-validated result of lid.network.
type networkValue struct {
	allowAll     bool
	allow        []string // normalized, in source order (not deduplicated)
	allowPrivate bool
	addHosts     []HostIP // sorted by Host
	dns          []string
}

func (n *networkValue) String() string        { return "<lid.network>" }
func (n *networkValue) Type() string          { return "lid.network" }
func (n *networkValue) Freeze()               {}
func (n *networkValue) Truth() starlark.Bool  { return starlark.True }
func (n *networkValue) Hash() (uint32, error) { return 0, fmt.Errorf("unhashable type: lid.network") }

// mountValue is the opaque result of lid.mount (a live VFS mount).
type mountValue struct {
	spec MountSpec
}

func (m *mountValue) String() string        { return "<lid.mount " + m.spec.GuestPath + ">" }
func (m *mountValue) Type() string          { return "lid.mount" }
func (m *mountValue) Freeze()               {}
func (m *mountValue) Truth() starlark.Bool  { return starlark.True }
func (m *mountValue) Hash() (uint32, error) { return 0, fmt.Errorf("unhashable type: lid.mount") }

// seedValue is the opaque result of lid.seed (a boot-time copy-inject).
type seedValue struct {
	spec SeedSpec
}

func (s *seedValue) String() string        { return "<lid.seed " + s.spec.GuestPath + ">" }
func (s *seedValue) Type() string          { return "lid.seed" }
func (s *seedValue) Freeze()               {}
func (s *seedValue) Truth() starlark.Bool  { return starlark.True }
func (s *seedValue) Hash() (uint32, error) { return 0, fmt.Errorf("unhashable type: lid.seed") }

// ---------------------------------------------------------------------------
// Host, size, timeout, cpu validation.
// ---------------------------------------------------------------------------

// normalizeHost validates a host glob per SPEC §Hosts and returns its
// normalized (trimmed, lowercased) form.
func normalizeHost(raw string) (string, error) {
	h := strings.ToLower(strings.TrimSpace(raw))
	if h == "" {
		return "", errf(ErrInvalidHost, "empty host %q", raw)
	}
	nonFiller := false // at least one char besides '.' and '-'
	for _, c := range h {
		switch {
		case c >= 'a' && c <= 'z', c >= '0' && c <= '9', c == '*':
			nonFiller = true
		case c == '.' || c == '-':
		default:
			return "", errf(ErrInvalidHost, "host %q contains invalid character %q", raw, c)
		}
	}
	if !nonFiller {
		return "", errf(ErrInvalidHost, "host %q is solely dots/hyphens", raw)
	}
	return h, nil
}

func normalizeHostList(l *starlark.List, what string) ([]string, error) {
	if l == nil {
		return nil, nil
	}
	out := make([]string, 0, l.Len())
	for i := 0; i < l.Len(); i++ {
		s, ok := starlark.AsString(l.Index(i))
		if !ok {
			return nil, errf(ErrInvalidHost, "%s[%d]: got %s, want string", what, i, l.Index(i).Type())
		}
		h, err := normalizeHost(s)
		if err != nil {
			return nil, fmt.Errorf("%s[%d]: %w", what, i, err)
		}
		out = append(out, h)
	}
	return out, nil
}

var sizeRe = regexp.MustCompile(`^([0-9]+)(MiB|GiB|MB|GB)$`)

// parseSize converts an int (MiB) or "<n>(MiB|GiB|MB|GB)" string to MiB,
// enforcing 1 <= size <= 1048576 MiB (SPEC §Sizes).
func parseSize(kwarg string, v starlark.Value) (int, error) {
	var mb int64
	switch v := v.(type) {
	case starlark.Int:
		n, ok := v.Int64()
		if !ok {
			return 0, errf(ErrInvalidSize, "%s: integer out of range", kwarg)
		}
		mb = n
	case starlark.String:
		m := sizeRe.FindStringSubmatch(string(v))
		if m == nil {
			return 0, errf(ErrInvalidSize, "%s: %q does not match ^[0-9]+(MiB|GiB|MB|GB)$", kwarg, string(v))
		}
		n, err := strconv.ParseInt(m[1], 10, 64)
		if err != nil {
			return 0, errf(ErrInvalidSize, "%s: %q out of range", kwarg, string(v))
		}
		if m[2] == "GiB" || m[2] == "GB" {
			if n > 1024 {
				return 0, errf(ErrInvalidSize, "%s: %q exceeds 1048576 MiB", kwarg, string(v))
			}
			n *= 1024
		}
		mb = n
	default:
		return 0, errf(ErrInvalidSize, "%s: got %s, want int or string", kwarg, v.Type())
	}
	if mb < 1 || mb > 1048576 {
		return 0, errf(ErrInvalidSize, "%s: %d MiB outside [1, 1048576]", kwarg, mb)
	}
	return int(mb), nil
}

// parseTimeout converts int seconds or a Go duration string to seconds > 0.
func parseTimeout(v starlark.Value) (int, error) {
	switch v := v.(type) {
	case starlark.Int:
		n, ok := v.Int64()
		if !ok || n <= 0 || n > int64(^uint(0)>>1) {
			return 0, errf(ErrInvalidTimeout, "timeout %v is not a positive number of seconds", v)
		}
		return int(n), nil
	case starlark.String:
		d, err := time.ParseDuration(string(v))
		if err != nil {
			return 0, errf(ErrInvalidTimeout, "timeout %q: %v", string(v), err)
		}
		if d <= 0 {
			return 0, errf(ErrInvalidTimeout, "timeout %q is not positive", string(v))
		}
		secs := (d + time.Second - 1) / time.Second // round up sub-second remainders
		return int(secs), nil
	default:
		return 0, errf(ErrInvalidTimeout, "timeout: got %s, want int or string", v.Type())
	}
}

// parseCPUs converts an int or float to a cpu count in (0, 128].
func parseCPUs(v starlark.Value) (float64, error) {
	var c float64
	switch v := v.(type) {
	case starlark.Int:
		n, ok := v.Int64()
		if !ok {
			return 0, errf(ErrInvalidCPU, "cpus: integer out of range")
		}
		c = float64(n)
	case starlark.Float:
		c = float64(v)
	default:
		return 0, errf(ErrInvalidCPU, "cpus: got %s, want int or float", v.Type())
	}
	if !(c > 0 && c <= 128) {
		return 0, errf(ErrInvalidCPU, "cpus %v outside (0, 128]", v)
	}
	return c, nil
}

func stringList(l *starlark.List, kwarg string, wrap error) ([]string, error) {
	if l == nil {
		return nil, nil
	}
	out := make([]string, 0, l.Len())
	for i := 0; i < l.Len(); i++ {
		s, ok := starlark.AsString(l.Index(i))
		if !ok {
			return nil, errf(wrap, "%s[%d]: got %s, want string", kwarg, i, l.Index(i).Type())
		}
		out = append(out, s)
	}
	return out, nil
}

// ---------------------------------------------------------------------------
// Builtins.
// ---------------------------------------------------------------------------

// loader carries the per-LoadFile registration state.
type loader struct {
	file *File
	seen map[string]bool
}

func (ld *loader) module() *starlarkstruct.Module {
	return &starlarkstruct.Module{
		Name: "lid",
		Members: starlark.StringDict{
			"sandbox":             starlark.NewBuiltin("lid.sandbox", ld.sandbox),
			"network":             starlark.NewBuiltin("lid.network", networkBuiltin),
			"secret":              starlark.NewBuiltin("lid.secret", secretBuiltin),
			"github":              starlark.NewBuiltin("lid.github", githubBuiltin),
			"claude_subscription": starlark.NewBuiltin("lid.claude_subscription", claudeSubscriptionBuiltin),
			"mount":               starlark.NewBuiltin("lid.mount", mountBuiltin),
			"seed":                starlark.NewBuiltin("lid.seed", seedBuiltin),
			"hosts":               hostsStruct,
		},
	}
}

func networkBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	if len(args) > 0 {
		return nil, fmt.Errorf("%s: positional arguments are not allowed; use keyword arguments", b.Name())
	}
	var (
		allowL, dnsL           *starlark.List
		allowAll, allowPrivate bool
		addHostsD              *starlark.Dict
	)
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"allow?", &allowL,
		"allow_all?", &allowAll,
		"allow_private?", &allowPrivate,
		"add_hosts?", &addHostsD,
		"dns?", &dnsL,
	); err != nil {
		return nil, err
	}

	allow, err := normalizeHostList(allowL, "allow")
	if err != nil {
		return nil, err
	}
	if allowAll && len(allow) > 0 {
		return nil, errf(ErrAllowAllConflict, "allow_all=True with %d allow hosts", len(allow))
	}
	if !allowAll && len(allow) == 0 {
		return nil, errf(ErrEmptyAllow, "allow is empty and allow_all is False")
	}

	var addHosts []HostIP
	if addHostsD != nil {
		for _, item := range addHostsD.Items() {
			k, ok := starlark.AsString(item[0])
			if !ok {
				return nil, errf(ErrInvalidHost, "add_hosts: key %s is not a string", item[0].Type())
			}
			host, err := normalizeHost(k)
			if err != nil {
				return nil, fmt.Errorf("add_hosts: %w", err)
			}
			ip, ok := starlark.AsString(item[1])
			if !ok {
				return nil, errf(ErrInvalidHost, "add_hosts[%q]: value %s is not a string", k, item[1].Type())
			}
			if _, err := netip.ParseAddr(ip); err != nil {
				return nil, errf(ErrInvalidHost, "add_hosts[%q]: %q is not a valid IP", k, ip)
			}
			addHosts = append(addHosts, HostIP{Host: host, IP: ip})
		}
		sort.Slice(addHosts, func(i, j int) bool { return addHosts[i].Host < addHosts[j].Host })
	}

	dns, err := stringList(dnsL, "dns", ErrEval)
	if err != nil {
		return nil, err
	}

	return &networkValue{
		allowAll:     allowAll,
		allow:        allow,
		allowPrivate: allowPrivate,
		addHosts:     addHosts,
		dns:          dns,
	}, nil
}

var secretNameRe = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_]*$`)

func secretBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	var (
		name                   string
		fromEnvV, valueV       starlark.Value
		fromCmdL, hostsL       *starlark.List
		fromEnvStr, valueStr   string
		fromEnvSet, fromCmdSet bool
		valueSet               bool
	)
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"name", &name,
		"from_env?", &fromEnvV,
		"from_cmd?", &fromCmdL,
		"value?", &valueV,
		"hosts?", &hostsL,
	); err != nil {
		return nil, err
	}

	if !secretNameRe.MatchString(name) {
		return nil, errf(ErrSecretName, "%q does not match [A-Za-z_][A-Za-z0-9_]*", name)
	}

	// A source counts as given only if present, non-None, and nonempty
	// (SPEC §Clarifications).
	if fromEnvV != nil && fromEnvV != starlark.None {
		s, ok := starlark.AsString(fromEnvV)
		if !ok {
			return nil, fmt.Errorf("%s: from_env: got %s, want string", b.Name(), fromEnvV.Type())
		}
		fromEnvStr, fromEnvSet = s, s != ""
	}
	var fromCmd []string
	if fromCmdL != nil {
		cmd, err := stringList(fromCmdL, "from_cmd", ErrSecretSource)
		if err != nil {
			return nil, err
		}
		fromCmd, fromCmdSet = cmd, len(cmd) > 0
	}
	if valueV != nil && valueV != starlark.None {
		s, ok := starlark.AsString(valueV)
		if !ok {
			return nil, fmt.Errorf("%s: value: got %s, want string", b.Name(), valueV.Type())
		}
		valueStr, valueSet = s, s != ""
	}

	nsources := 0
	for _, set := range []bool{fromEnvSet, fromCmdSet, valueSet} {
		if set {
			nsources++
		}
	}
	if nsources != 1 {
		return nil, errf(ErrSecretSource, "secret %q has %d sources, want exactly one of from_env/from_cmd/value", name, nsources)
	}

	hosts, err := normalizeHostList(hostsL, "hosts")
	if err != nil {
		return nil, err
	}
	if len(hosts) == 0 {
		return nil, errf(ErrSecretHosts, "secret %q has no hosts", name)
	}

	var src Source
	switch {
	case fromEnvSet:
		src = Source{Kind: SourceEnv, EnvName: fromEnvStr}
	case fromCmdSet:
		src = Source{Kind: SourceCmd, Cmd: fromCmd}
	default:
		src = Source{Kind: SourceLiteral, Literal: valueStr}
	}
	return &secretValue{spec: SecretSpec{Name: name, Source: src, Hosts: hosts}}, nil
}

// withinWorkspace reports whether an absolute guest path lies within workspace,
// mirroring matchlock's pkg/api mount validation (a "/" workspace admits any
// absolute path). Both arguments are cleaned first.
func withinWorkspace(guest, workspace string) bool {
	guest = path.Clean(guest)
	workspace = path.Clean(workspace)
	if workspace == "/" {
		return strings.HasPrefix(guest, "/")
	}
	return guest == workspace || strings.HasPrefix(guest, workspace+"/")
}

// mountBuiltin implements lid.mount: a live host-directory VFS mount. The guest
// path must be absolute; the sandbox() caller additionally checks it lies under
// the profile workspace. The host path is kept verbatim (resolved at launch).
func mountBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	if len(args) > 0 {
		return nil, fmt.Errorf("%s: positional arguments are not allowed; use keyword arguments", b.Name())
	}
	var host, guest string
	mode := "rw"
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"host", &host,
		"guest", &guest,
		"mode?", &mode,
	); err != nil {
		return nil, err
	}
	if host == "" {
		return nil, errf(ErrInvalidMount, "mount host must be nonempty")
	}
	if !strings.HasPrefix(guest, "/") {
		return nil, errf(ErrInvalidMount, "mount guest %q is not an absolute path", guest)
	}
	switch MountMode(mode) {
	case MountRW, MountRO:
	default:
		return nil, errf(ErrInvalidMount, "mount mode %q is not one of \"rw\", \"ro\"", mode)
	}
	return &mountValue{spec: MountSpec{GuestPath: guest, HostPath: host, Mode: MountMode(mode)}}, nil
}

// seedBuiltin implements lid.seed: a boot-time copy of a host file/dir into an
// arbitrary (absolute) guest path. The host path is kept verbatim (resolved at
// launch).
func seedBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	if len(args) > 0 {
		return nil, fmt.Errorf("%s: positional arguments are not allowed; use keyword arguments", b.Name())
	}
	var host, guest string
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"host", &host,
		"guest", &guest,
	); err != nil {
		return nil, err
	}
	if host == "" {
		return nil, errf(ErrInvalidMount, "seed host must be nonempty")
	}
	if !strings.HasPrefix(guest, "/") {
		return nil, errf(ErrInvalidMount, "seed guest %q is not an absolute path", guest)
	}
	return &seedValue{spec: SeedSpec{GuestPath: guest, HostPath: host}}, nil
}

func githubBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	var hostsV starlark.Value
	if err := starlark.UnpackArgs(b.Name(), args, kwargs, "hosts?", &hostsV); err != nil {
		return nil, err
	}
	var hosts []string
	switch hv := hostsV.(type) {
	case nil, starlark.NoneType:
		hosts = append([]string(nil), githubDefaultHosts...)
	case *starlark.List:
		var err error
		hosts, err = normalizeHostList(hv, "hosts")
		if err != nil {
			return nil, err
		}
		if len(hosts) == 0 {
			return nil, errf(ErrSecretHosts, "lid.github hosts list is empty")
		}
	default:
		return nil, fmt.Errorf("%s: hosts: got %s, want list or None", b.Name(), hostsV.Type())
	}
	return &secretValue{spec: SecretSpec{
		Name:          "GITHUB_TOKEN",
		Source:        Source{Kind: SourceGitHub},
		Hosts:         hosts,
		GitCredential: true,
	}}, nil
}

func claudeSubscriptionBuiltin(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	var (
		credentialsFileV starlark.Value
		hostsV           starlark.Value
	)
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"credentials_file?", &credentialsFileV,
		"hosts?", &hostsV,
	); err != nil {
		return nil, err
	}

	// Parse credentials_file: must be string or None/absent.
	var credentialsFile string
	switch v := credentialsFileV.(type) {
	case nil, starlark.NoneType:
		credentialsFile = ""
	case starlark.String:
		credentialsFile = string(v)
	default:
		return nil, fmt.Errorf("%s: credentials_file: got %s, want string or None", b.Name(), credentialsFileV.Type())
	}

	// Parse hosts: list or None/absent.
	var hosts []string
	switch hv := hostsV.(type) {
	case nil, starlark.NoneType:
		hosts = append([]string(nil), claudeSubscriptionDefaultHosts...)
	case *starlark.List:
		var err error
		hosts, err = normalizeHostList(hv, "hosts")
		if err != nil {
			return nil, err
		}
		if len(hosts) == 0 {
			return nil, errf(ErrSecretHosts, "lid.claude_subscription hosts list is empty")
		}
	default:
		return nil, fmt.Errorf("%s: hosts: got %s, want list or None", b.Name(), hostsV.Type())
	}

	return &secretValue{spec: SecretSpec{
		Name:   "ANTHROPIC_API_KEY",
		Source: Source{Kind: SourceAnthropicOAuth, Path: credentialsFile},
		Hosts:  hosts,
	}}, nil
}

func (ld *loader) sandbox(_ *starlark.Thread, b *starlark.Builtin, args starlark.Tuple, kwargs []starlark.Tuple) (starlark.Value, error) {
	if len(args) > 0 {
		return nil, fmt.Errorf("%s: positional arguments are not allowed; use keyword arguments", b.Name())
	}
	var (
		name, image              string
		workspace                = "/workspace"
		mountCwd                 = "rw"
		cpusV, memV, diskV, tmoV starlark.Value
		networkV                 starlark.Value
		secretsL, commandL       *starlark.List
		mountsL, seedL, setupL   *starlark.List
		envD                     *starlark.Dict
	)
	if err := starlark.UnpackArgs(b.Name(), args, kwargs,
		"name", &name,
		"image", &image,
		"cpus?", &cpusV,
		"memory?", &memV,
		"disk?", &diskV,
		"timeout?", &tmoV,
		"workspace?", &workspace,
		"mount_cwd?", &mountCwd,
		"network?", &networkV,
		"secrets?", &secretsL,
		"env?", &envD,
		"command?", &commandL,
		"mounts?", &mountsL,
		"seed?", &seedL,
		"setup?", &setupL,
	); err != nil {
		return nil, err
	}

	if name == "" {
		return nil, fmt.Errorf("%s: name must be nonempty", b.Name())
	}
	if image == "" {
		return nil, fmt.Errorf("%s: image must be nonempty", b.Name())
	}
	if ld.seen[name] {
		return nil, errf(ErrDuplicateProfile, "profile %q defined twice", name)
	}

	p := &Profile{
		Name:           name,
		Image:          image,
		CPUs:           2,
		MemoryMB:       2048,
		DiskMB:         10240,
		TimeoutSeconds: 43200,
		Workspace:      workspace,
		MountCwd:       MountMode(mountCwd),
		Command:        []string{"claude"},
	}

	var err error
	if cpusV != nil {
		if p.CPUs, err = parseCPUs(cpusV); err != nil {
			return nil, err
		}
	}
	if memV != nil {
		if p.MemoryMB, err = parseSize("memory", memV); err != nil {
			return nil, err
		}
	}
	if diskV != nil {
		if p.DiskMB, err = parseSize("disk", diskV); err != nil {
			return nil, err
		}
	}
	if tmoV != nil {
		if p.TimeoutSeconds, err = parseTimeout(tmoV); err != nil {
			return nil, err
		}
	}
	if !strings.HasPrefix(p.Workspace, "/") {
		return nil, errf(ErrInvalidWorkspace, "workspace %q is not an absolute path", p.Workspace)
	}
	switch p.MountCwd {
	case MountRW, MountRO, MountOff:
	default:
		return nil, errf(ErrInvalidMount, "mount_cwd %q is not one of \"rw\", \"ro\", \"off\"", mountCwd)
	}
	if commandL != nil {
		cmd, err := stringList(commandL, "command", ErrBadCommand)
		if err != nil {
			return nil, err
		}
		if len(cmd) == 0 {
			return nil, errf(ErrBadCommand, "command is empty")
		}
		p.Command = cmd
	}
	if envD != nil {
		p.Env = make(map[string]string, envD.Len())
		for _, item := range envD.Items() {
			k, ok := starlark.AsString(item[0])
			if !ok {
				return nil, fmt.Errorf("%s: env key: got %s, want string", b.Name(), item[0].Type())
			}
			v, ok := starlark.AsString(item[1])
			if !ok {
				return nil, fmt.Errorf("%s: env[%q]: got %s, want string", b.Name(), k, item[1].Type())
			}
			p.Env[k] = v
		}
	}

	if secretsL != nil {
		for i := 0; i < secretsL.Len(); i++ {
			sv, ok := secretsL.Index(i).(*secretValue)
			if !ok {
				return nil, fmt.Errorf("%s: secrets[%d]: got %s, want a value from lid.secret or lid.github",
					b.Name(), i, secretsL.Index(i).Type())
			}
			spec := sv.spec
			spec.Hosts = append([]string(nil), spec.Hosts...)
			spec.Source.Cmd = append([]string(nil), spec.Source.Cmd...)
			p.Secrets = append(p.Secrets, spec)
		}
	}

	// Live VFS mounts. The guest path must lie under the workspace (matchlock
	// serves the whole VFS as one tree rooted there).
	if mountsL != nil {
		for i := 0; i < mountsL.Len(); i++ {
			mv, ok := mountsL.Index(i).(*mountValue)
			if !ok {
				return nil, fmt.Errorf("%s: mounts[%d]: got %s, want a value from lid.mount(...)",
					b.Name(), i, mountsL.Index(i).Type())
			}
			if !withinWorkspace(mv.spec.GuestPath, p.Workspace) {
				return nil, errf(ErrInvalidMount, "mount guest %q is not under workspace %q", mv.spec.GuestPath, p.Workspace)
			}
			p.Mounts = append(p.Mounts, mv.spec)
		}
	}

	// Boot-time copies (into any guest path).
	if seedL != nil {
		for i := 0; i < seedL.Len(); i++ {
			sv, ok := seedL.Index(i).(*seedValue)
			if !ok {
				return nil, fmt.Errorf("%s: seed[%d]: got %s, want a value from lid.seed(...)",
					b.Name(), i, seedL.Index(i).Type())
			}
			p.Seeds = append(p.Seeds, sv.spec)
		}
	}

	// Build-time commands for `lid bake`.
	if setupL != nil {
		setup, err := stringList(setupL, "setup", ErrBadCommand)
		if err != nil {
			return nil, err
		}
		p.Setup = setup
	}

	var nv *networkValue
	switch v := networkV.(type) {
	case nil, starlark.NoneType:
		nv = nil
	case *networkValue:
		nv = v
	default:
		return nil, fmt.Errorf("%s: network: got %s, want lid.network(...) or None", b.Name(), networkV.Type())
	}

	if nv == nil {
		if len(p.Secrets) > 0 {
			return nil, errf(ErrNoNetworkSecrets, "profile %q declares secrets without a network", name)
		}
		p.Net = Network{NoNetwork: true, BlockPrivateIPs: true}
	} else {
		var union []string
		seen := make(map[string]bool)
		add := func(h string) {
			if !seen[h] {
				seen[h] = true
				union = append(union, h)
			}
		}
		if !nv.allowAll {
			for _, h := range nv.allow {
				add(h)
			}
		}
		for _, s := range p.Secrets {
			for _, h := range s.Hosts {
				add(h)
			}
		}
		p.Net = Network{
			AllowAll:        nv.allowAll,
			AllowedHosts:    union,
			BlockPrivateIPs: !nv.allowPrivate,
			AddHosts:        append([]HostIP(nil), nv.addHosts...),
			DNS:             append([]string(nil), nv.dns...),
		}
	}

	ld.seen[name] = true
	ld.file.Profiles = append(ld.file.Profiles, p)
	return starlark.None, nil
}

// loadFile is the implementation behind LoadFile.
func loadFile(filename string, src []byte) (f *File, err error) {
	defer func() {
		if r := recover(); r != nil {
			f, err = nil, fmt.Errorf("%w: internal panic: %v", ErrEval, r)
		}
	}()

	ld := &loader{file: &File{}, seen: make(map[string]bool)}
	thread := &starlark.Thread{Name: "lid config " + filename}
	thread.SetMaxExecutionSteps(maxExecutionSteps)
	opts := &syntax.FileOptions{
		TopLevelControl: true, // allow if/for at top level; while/recursion stay off
	}
	if _, err := starlark.ExecFileOptions(opts, thread, filename, src, starlark.StringDict{"lid": ld.module()}); err != nil {
		return nil, fmt.Errorf("%w: %w", ErrEval, err)
	}
	return ld.file, nil
}
