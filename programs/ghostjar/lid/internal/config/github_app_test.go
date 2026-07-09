// Frozen tests for lid.github_app — derived from SPEC.md §lid.github_app (and
// §lid.github for the shared default host list, the "Go API (pinned)"
// GitHubAppSource/SecretSpec blocks, and §Compilation semantics for the host
// union) BEFORE the implementation exists. Never edited to make an
// implementation pass. The builtin is currently a STUB returning ErrEval "not
// yet implemented", so the positive cases here are RED pending implementation.
package config_test

import (
	"reflect"
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

// ghDefaultHosts is the default host list, identical to lid.github()'s
// (SPEC §lid.github, referenced by §lid.github_app), in list order.
var ghDefaultHosts = []string{
	"github.com",
	"api.github.com",
	"codeload.github.com",
	"objects.githubusercontent.com",
	"raw.githubusercontent.com",
	"*.githubusercontent.com",
	"ghcr.io",
}

// keychainPK is a valid credential-source private_key expression used across
// the github_app positive cases.
const keychainPK = `lid.from_keychain("gh-app-key", account = "acct")`

// ga wraps a lid.github_app(gaArgs) secret in a full sandbox with allow_all
// network (so secret hosts are still unioned into AllowedHosts per SPEC).
func ga(gaArgs string, netKwarg ...string) string {
	net := `network = lid.network(allow_all = True)`
	if len(netKwarg) > 0 {
		net = netKwarg[0]
	}
	secret := `lid.github_app(` + gaArgs + `)`
	return "lid.sandbox(" + strings.Join([]string{
		`name = "p"`, `image = "img"`, net,
		`secrets = [` + secret + `]`,
	}, ", ") + ")"
}

// loadGA loads a github_app sandbox and returns its single secret.
func loadGA(t *testing.T, gaArgs string, netKwarg ...string) config.SecretSpec {
	t.Helper()
	f, err := config.LoadFile("ghapp.star", []byte(ga(gaArgs, netKwarg...)))
	if err != nil {
		t.Fatalf("LoadFile failed on github_app(%s): %v", gaArgs, err)
	}
	p, err := f.Lookup("p")
	if err != nil {
		t.Fatalf("Lookup: %v", err)
	}
	if len(p.Secrets) != 1 {
		t.Fatalf("expected 1 secret, got %d", len(p.Secrets))
	}
	return p.Secrets[0]
}

// assertHosts checks Hosts equals want in order.
func assertHosts(t *testing.T, got, want []string) {
	t.Helper()
	if !reflect.DeepEqual(got, want) {
		t.Errorf("Hosts = %v, want %v", got, want)
	}
}

// SPEC §lid.github_app: the canonical secret shape with installation_id +
// repositories + permissions, and defaulted hosts.
func TestGitHubAppFullSecretShape(t *testing.T) {
	s := loadGA(t, `app_id = 12345, private_key = `+keychainPK+
		`, installation_id = 678, repositories = ["owner/repo", "org/other"]`+
		`, permissions = {"contents": "write", "pull_requests": "read"}`)

	if s.Name != "GITHUB_TOKEN" {
		t.Errorf("Name = %q, want GITHUB_TOKEN", s.Name)
	}
	if !s.GitCredential {
		t.Errorf("GitCredential = false, want true")
	}
	if s.Source.Kind != config.SourceGitHubApp {
		t.Errorf("Source.Kind = %q, want %q", s.Source.Kind, config.SourceGitHubApp)
	}
	app := s.Source.GitHubApp
	if app == nil {
		t.Fatalf("Source.GitHubApp is nil")
	}
	if app.AppID != 12345 {
		t.Errorf("AppID = %d, want 12345", app.AppID)
	}
	if app.InstallationID != 678 {
		t.Errorf("InstallationID = %d, want 678", app.InstallationID)
	}
	if !reflect.DeepEqual(app.Repositories, []string{"owner/repo", "org/other"}) {
		t.Errorf("Repositories = %v, want [owner/repo org/other]", app.Repositories)
	}
	wantPerms := map[string]string{"contents": "write", "pull_requests": "read"}
	if !reflect.DeepEqual(app.Permissions, wantPerms) {
		t.Errorf("Permissions = %v, want %v", app.Permissions, wantPerms)
	}
	// private_key is the nested keychain credential source.
	if app.PrivateKey.Kind != config.SourceKeychain {
		t.Errorf("PrivateKey.Kind = %q, want %q", app.PrivateKey.Kind, config.SourceKeychain)
	}
	if app.PrivateKey.Service != "gh-app-key" {
		t.Errorf("PrivateKey.Service = %q, want gh-app-key", app.PrivateKey.Service)
	}
	if app.PrivateKey.Account != "acct" {
		t.Errorf("PrivateKey.Account = %q, want acct", app.PrivateKey.Account)
	}
	// Default hosts (hosts omitted) match lid.github()'s list, in order.
	assertHosts(t, s.Hosts, ghDefaultHosts)
}

// SPEC §lid.github_app: installation_id supplied, repositories omitted, is
// valid; Repositories is nil (installation default).
func TestGitHubAppInstallationIDOnly(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+`, installation_id = 99`)
	app := s.Source.GitHubApp
	if app == nil {
		t.Fatalf("Source.GitHubApp is nil")
	}
	if app.InstallationID != 99 {
		t.Errorf("InstallationID = %d, want 99", app.InstallationID)
	}
	if app.Repositories != nil {
		t.Errorf("Repositories = %v, want nil", app.Repositories)
	}
	if app.Permissions != nil {
		t.Errorf("Permissions = %v, want nil", app.Permissions)
	}
}

// SPEC §lid.github_app: repositories supplied, installation_id omitted, is
// valid; InstallationID is 0 (auto-discover from repositories).
func TestGitHubAppRepositoriesOnly(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+`, repositories = ["owner/repo"]`)
	app := s.Source.GitHubApp
	if app == nil {
		t.Fatalf("Source.GitHubApp is nil")
	}
	if app.InstallationID != 0 {
		t.Errorf("InstallationID = %d, want 0 (auto-discover)", app.InstallationID)
	}
	if !reflect.DeepEqual(app.Repositories, []string{"owner/repo"}) {
		t.Errorf("Repositories = %v, want [owner/repo]", app.Repositories)
	}
}

// SPEC §lid.github_app: permissions omitted ⇒ nil (installation default).
func TestGitHubAppPermissionsOmitted(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+`, installation_id = 2`)
	if s.Source.GitHubApp.Permissions != nil {
		t.Errorf("Permissions = %v, want nil when omitted", s.Source.GitHubApp.Permissions)
	}
}

// SPEC §lid.github_app: explicit non-empty hosts replace the default list.
func TestGitHubAppCustomHosts(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+
		`, installation_id = 2, hosts = ["git.example.com", "codeload.example.com"]`)
	assertHosts(t, s.Hosts, []string{"git.example.com", "codeload.example.com"})
}

// SPEC §Hosts: explicit hosts are normalized (lowercased, trimmed).
func TestGitHubAppHostsNormalized(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+
		`, installation_id = 2, hosts = ["Git.Example.COM"]`)
	assertHosts(t, s.Hosts, []string{"git.example.com"})
}

// SPEC §Compilation semantics + §lid.github_app: the secret's (default) hosts
// union into Net.AllowedHosts, even under allow_all.
func TestGitHubAppDefaultHostsUnionedAllowAll(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+`, installation_id = 2`)
	_ = s
	f, err := config.LoadFile("ghapp.star", []byte(ga(
		`app_id = 1, private_key = `+keychainPK+`, installation_id = 2`)))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	allowed := make(map[string]bool)
	for _, h := range p.Net.AllowedHosts {
		allowed[h] = true
	}
	for _, want := range ghDefaultHosts {
		if !allowed[want] {
			t.Errorf("AllowedHosts missing default github host %q; got %v", want, p.Net.AllowedHosts)
		}
	}
}

// SPEC §Compilation semantics: with an explicit allow list, secret hosts union
// in after the allow-list hosts (allow order then secret order), deduped.
func TestGitHubAppHostsUnionedIntoAllowList(t *testing.T) {
	f, err := config.LoadFile("ghapp.star", []byte(ga(
		`app_id = 1, private_key = `+keychainPK+`, installation_id = 2, hosts = ["a.example", "github.com"]`,
		`network = lid.network(allow = ["a.example", "b.example"])`)))
	if err != nil {
		t.Fatalf("LoadFile: %v", err)
	}
	p, _ := f.Lookup("p")
	// allow: a.example, b.example ; secret: a.example (dup), github.com
	want := []string{"a.example", "b.example", "github.com"}
	if !reflect.DeepEqual(p.Net.AllowedHosts, want) {
		t.Errorf("AllowedHosts = %v, want %v", p.Net.AllowedHosts, want)
	}
}

// SPEC §Determinism (Invariant 7): two LoadFile calls on identical github_app
// source yield reflect.DeepEqual results.
func TestGitHubAppDeterministic(t *testing.T) {
	src := ga(`app_id = 42, private_key = ` + keychainPK +
		`, installation_id = 7, repositories = ["o/r", "o/s"]` +
		`, permissions = {"contents": "write", "issues": "read"}`)
	f1, err1 := config.LoadFile("ghapp.star", []byte(src))
	f2, err2 := config.LoadFile("ghapp.star", []byte(src))
	if err1 != nil || err2 != nil {
		t.Fatalf("LoadFile errors: %v / %v", err1, err2)
	}
	if !reflect.DeepEqual(f1, f2) {
		t.Errorf("github_app LoadFile not deterministic:\n%+v\n!=\n%+v", f1, f2)
	}
}

// SPEC §lid.github_app: opaque secret usable only in secrets=[...]; misuse as a
// credential source or bare expression fails with ErrEval.
func TestGitHubAppOpaqueMisuse(t *testing.T) {
	cases := map[string]string{
		"bare": `lid.github_app(app_id = 1, private_key = ` + keychainPK + `, installation_id = 2)`,
		"as_private_key": ga(`app_id = 1, installation_id = 2, private_key = ` +
			`lid.github_app(app_id = 2, private_key = ` + keychainPK + `, installation_id = 3)`),
	}
	for name, src := range cases {
		t.Run(name, func(t *testing.T) {
			requireErrIs(t, src, config.ErrEval)
		})
	}
}

// SPEC §lid.github_app validation ⇒ ErrGitHubApp. Every case matches BOTH
// ErrEval and ErrGitHubApp (SPEC §Errors dual-match contract).
func TestGitHubAppErrors(t *testing.T) {
	both := func() []error { return []error{config.ErrEval, config.ErrGitHubApp} }
	pk := keychainPK
	cases := []struct {
		name string
		args string
		want []error
	}{
		// app_id: missing / non-positive.
		{"app_id_missing", `private_key = ` + pk + `, installation_id = 2`, both()},
		{"app_id_zero", `app_id = 0, private_key = ` + pk + `, installation_id = 2`, both()},
		{"app_id_negative", `app_id = -1, private_key = ` + pk + `, installation_id = 2`, both()},

		// private_key: missing / wrong type.
		{"private_key_missing", `app_id = 1, installation_id = 2`, both()},
		{"private_key_string", `app_id = 1, private_key = "not-a-source", installation_id = 2`, both()},
		{"private_key_int", `app_id = 1, private_key = 5, installation_id = 2`, both()},
		{"private_key_none", `app_id = 1, private_key = None, installation_id = 2`, both()},
		{"private_key_is_secret", `app_id = 1, installation_id = 2, private_key = ` +
			`lid.secret("S", from_env = "E", hosts = ["a.example"])`, both()},

		// neither installation_id nor repositories.
		{"no_install_no_repos", `app_id = 1, private_key = ` + pk, both()},
		{"empty_repos_no_install", `app_id = 1, private_key = ` + pk + `, repositories = []`, both()},

		// repositories entries: must be owner/repo (exactly one '/', both nonempty).
		{"repo_no_slash", `app_id = 1, private_key = ` + pk + `, repositories = ["ownerrepo"]`, both()},
		{"repo_two_slashes", `app_id = 1, private_key = ` + pk + `, repositories = ["a/b/c"]`, both()},
		{"repo_empty_owner", `app_id = 1, private_key = ` + pk + `, repositories = ["/repo"]`, both()},
		{"repo_empty_name", `app_id = 1, private_key = ` + pk + `, repositories = ["owner/"]`, both()},
		{"repo_empty_string", `app_id = 1, private_key = ` + pk + `, repositories = [""]`, both()},
		{"repo_non_string", `app_id = 1, private_key = ` + pk + `, repositories = [42]`, both()},

		// permissions: keys and values nonempty strings.
		{"perm_empty_key", `app_id = 1, private_key = ` + pk + `, installation_id = 2, permissions = {"": "read"}`, both()},
		{"perm_empty_value", `app_id = 1, private_key = ` + pk + `, installation_id = 2, permissions = {"contents": ""}`, both()},
		{"perm_non_string_value", `app_id = 1, private_key = ` + pk + `, installation_id = 2, permissions = {"contents": 3}`, both()},
		{"perm_non_string_key", `app_id = 1, private_key = ` + pk + `, installation_id = 2, permissions = {5: "read"}`, both()},

		// installation_id: non-positive when given.
		{"installation_id_zero", `app_id = 1, private_key = ` + pk + `, installation_id = 0`, both()},
		{"installation_id_negative", `app_id = 1, private_key = ` + pk + `, installation_id = -3`, both()},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			requireErrIs(t, ga(tc.args), tc.want...)
		})
	}
}

// SPEC §lid.github_app: empty explicit hosts=[] ⇒ ErrSecretHosts (like other
// secrets), matching both ErrEval and ErrSecretHosts.
func TestGitHubAppEmptyHostsError(t *testing.T) {
	src := ga(`app_id = 1, private_key = ` + keychainPK + `, installation_id = 2, hosts = []`)
	requireErrIs(t, src, config.ErrEval, config.ErrSecretHosts)
}

// SPEC §Compilation semantics: a github_app secret in a profile with no network
// ⇒ ErrNoNetworkSecrets.
func TestGitHubAppNoNetworkError(t *testing.T) {
	src := `lid.sandbox(name = "p", image = "img", secrets = [` +
		`lid.github_app(app_id = 1, private_key = ` + keychainPK + `, installation_id = 2)])`
	requireErrIs(t, src, config.ErrNoNetworkSecrets)
}

// SPEC §Clarifications: no credential value appears anywhere; the App config
// carries only symbolic locators. Assert no unrelated Source fields leak on the
// outer github_app source.
func TestGitHubAppSourceContainsOnlySymbolic(t *testing.T) {
	s := loadGA(t, `app_id = 1, private_key = `+keychainPK+`, installation_id = 2`)
	src := s.Source
	if src.EnvName != "" || src.Literal != "" || src.Path != "" ||
		src.Service != "" || src.Account != "" || len(src.Cmd) != 0 {
		t.Errorf("github_app outer Source has unexpected non-zero fields: %+v", src)
	}
}
