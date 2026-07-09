// Frozen tests for lid.from_keychain — derived from SPEC.md §lid.from_keychain
// (and the "Go API (pinned)" Source block) BEFORE the implementation exists.
// These are never edited to make an implementation pass. from_keychain is only
// observable via lid.github_app(private_key=...), so the positive assertions run
// through a github_app secret; negative cases assert the ErrKeychainSource
// sentinel directly. The builtin is currently a STUB returning ErrEval "not yet
// implemented", so the positive cases here are RED pending implementation.
package config_test

import (
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

// gaKeychain builds a lid.sandbox whose sole secret is a github_app whose
// private_key comes from lid.from_keychain(kcArgs). A github_app is the only
// place a credential source is observable, so this is how we inspect the
// resulting Source{Kind: SourceKeychain, ...}. installation_id is supplied so
// the github_app itself is valid and any failure is attributable to the
// from_keychain arguments under test.
func gaKeychain(kcArgs string) string {
	secret := `lid.github_app(app_id = 123, installation_id = 456, private_key = lid.from_keychain(` + kcArgs + `))`
	return "lid.sandbox(" + strings.Join([]string{
		`name = "p"`, `image = "img"`,
		`network = lid.network(allow_all = True)`,
		`secrets = [` + secret + `]`,
	}, ", ") + ")"
}

// keychainSource loads gaKeychain(kcArgs), requires success, and returns the
// nested private_key credential Source of the single github_app secret.
func keychainSource(t *testing.T, kcArgs string) config.Source {
	t.Helper()
	f, err := config.LoadFile("keychain.star", []byte(gaKeychain(kcArgs)))
	if err != nil {
		t.Fatalf("LoadFile failed on from_keychain(%s): %v", kcArgs, err)
	}
	p, err := f.Lookup("p")
	if err != nil {
		t.Fatalf("Lookup: %v", err)
	}
	if len(p.Secrets) != 1 {
		t.Fatalf("expected 1 secret, got %d", len(p.Secrets))
	}
	app := p.Secrets[0].Source.GitHubApp
	if app == nil {
		t.Fatalf("secret Source.GitHubApp is nil")
	}
	return app.PrivateKey
}

// SPEC §lid.from_keychain: service only ⇒ Source{Kind:"keychain", Service, ""}.
func TestFromKeychainServiceOnly(t *testing.T) {
	src := keychainSource(t, `"my-app-key"`)
	if src.Kind != config.SourceKeychain {
		t.Errorf("Kind = %q, want %q", src.Kind, config.SourceKeychain)
	}
	if src.Service != "my-app-key" {
		t.Errorf("Service = %q, want my-app-key", src.Service)
	}
	if src.Account != "" {
		t.Errorf("Account = %q, want empty (unspecified)", src.Account)
	}
}

// SPEC §lid.from_keychain: account, when given nonempty, disambiguates.
func TestFromKeychainServiceAndAccount(t *testing.T) {
	src := keychainSource(t, `"my-app-key", account = "bot@example.com"`)
	if src.Kind != config.SourceKeychain {
		t.Errorf("Kind = %q, want %q", src.Kind, config.SourceKeychain)
	}
	if src.Service != "my-app-key" {
		t.Errorf("Service = %q, want my-app-key", src.Service)
	}
	if src.Account != "bot@example.com" {
		t.Errorf("Account = %q, want bot@example.com", src.Account)
	}
}

// SPEC §lid.from_keychain: account can also be passed positionally
// (service, account=None). Positional account should behave like the kwarg.
func TestFromKeychainAccountPositional(t *testing.T) {
	src := keychainSource(t, `"my-app-key", "acct"`)
	if src.Service != "my-app-key" || src.Account != "acct" {
		t.Errorf("Service/Account = %q/%q, want my-app-key/acct", src.Service, src.Account)
	}
}

// SPEC §lid.from_keychain: account=None ⇒ unspecified (empty Account).
func TestFromKeychainAccountNone(t *testing.T) {
	src := keychainSource(t, `"my-app-key", account = None`)
	if src.Account != "" {
		t.Errorf("Account = %q, want empty for None", src.Account)
	}
}

// The carried credential source holds only symbolic locators — no other Source
// fields leak (SPEC §Clarifications: credential source carries no value; the
// pinned Source struct has per-kind fields that must stay zero here).
func TestFromKeychainNoValueFields(t *testing.T) {
	src := keychainSource(t, `"svc", account = "acct"`)
	if src.EnvName != "" || src.Literal != "" || src.Path != "" ||
		len(src.Cmd) != 0 || src.GitHubApp != nil {
		t.Errorf("keychain Source has unexpected non-zero fields: %+v", src)
	}
}

// SPEC §lid.from_keychain: bad arguments ⇒ ErrKeychainSource. Every case must
// match BOTH ErrEval and ErrKeychainSource (SPEC §Errors dual-match contract).
func TestFromKeychainErrors(t *testing.T) {
	both := func() []error { return []error{config.ErrEval, config.ErrKeychainSource} }
	cases := []struct {
		name string
		args string
		want []error
	}{
		{"empty_service", `""`, both()},
		{"whitespace_service", `"   "`, both()},
		{"tab_service", `"\t"`, both()},
		{"account_given_empty", `"svc", account = ""`, both()},
		{"account_given_whitespace", `"svc", account = "  "`, both()},
		{"service_non_string_int", `42`, both()},
		{"service_non_string_none", `None`, both()},
		{"account_non_string_int", `"svc", account = 7`, both()},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			requireErrIs(t, gaKeychain(tc.args), tc.want...)
		})
	}
}

// SPEC §lid.from_keychain: missing required service argument ⇒ ErrEval
// (argument-shape failure). Also exercised bare, outside a github_app.
func TestFromKeychainMissingService(t *testing.T) {
	requireErrIs(t, gaKeychain(``), config.ErrEval)
}

// SPEC §lid.from_keychain: the returned value is an opaque credential source,
// usable ONLY as lid.github_app(private_key=...). Using it as a plain secret,
// in an allow list, or bare must fail with ErrEval.
func TestFromKeychainOpaqueMisuse(t *testing.T) {
	cases := map[string]string{
		"in_secrets_list": sb(netOK, `secrets = [lid.from_keychain("svc")]`),
		"bare_expression": `lid.from_keychain("svc")`,
		"positional_extra": sb(netOK,
			`secrets = [lid.github_app(app_id = 1, installation_id = 2, private_key = lid.from_keychain("svc", "acct", "extra"))]`),
	}
	for name, src := range cases {
		t.Run(name, func(t *testing.T) {
			requireErrIs(t, src, config.ErrEval)
		})
	}
}
