// Unit tests for the exact error sentinels of SPEC.md §Errors: every Err*
// exported from this package is exercised by at least one concrete starlark
// snippet, matched with errors.Is (never string matching, except where the
// SPEC promises a message naming an unknown kwarg).
package config_test

import (
	"errors"
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

// sb builds a lid.sandbox call with valid name/image plus extra kwargs.
func sb(kwargs ...string) string {
	all := append([]string{`name = "p"`, `image = "img"`}, kwargs...)
	return "lid.sandbox(" + strings.Join(all, ", ") + ")"
}

const netOK = `network = lid.network(allow = ["ok.example"])`

// requireErrIs asserts LoadFile(src) fails and the error matches every
// sentinel in wants via errors.Is.
func requireErrIs(t failer, src string, wants ...error) error {
	f, err := config.LoadFile("err.star", []byte(src))
	if err == nil {
		t.Fatalf("LoadFile succeeded (%+v), want error %v on:\n%s", f, wants, src)
	}
	for _, w := range wants {
		if !errors.Is(err, w) {
			t.Fatalf("LoadFile error %q does not match sentinel %q (errors.Is) on:\n%s", err, w, src)
		}
	}
	return err
}

func TestErrorSentinels(t *testing.T) {
	both := func(e error) []error { return []error{config.ErrEval, e} }
	cases := []struct {
		name string
		src  string
		want []error
	}{
		// --- profile registration ---
		{"duplicate_profile", sb() + "\n" + `lid.sandbox(name = "p", image = "other")`,
			both(config.ErrDuplicateProfile)},

		// --- lid.sandbox argument shape (ErrEval at minimum) ---
		{"positional_arg", `lid.sandbox("p", image = "img")`, []error{config.ErrEval}},
		{"positional_args_only", `lid.sandbox("p", "img")`, []error{config.ErrEval}},
		{"missing_name", `lid.sandbox(image = "img")`, []error{config.ErrEval}},
		{"missing_image", `lid.sandbox(name = "p")`, []error{config.ErrEval}},
		{"empty_name", `lid.sandbox(name = "", image = "img")`, []error{config.ErrEval}},
		{"empty_image", `lid.sandbox(name = "p", image = "")`, []error{config.ErrEval}},
		{"unknown_kwarg", sb(`flavor = "x"`), []error{config.ErrEval}},

		// --- hosts (SPEC §Hosts): allow list ---
		{"host_scheme", sb(`network = lid.network(allow = ["https://a.example"])`), both(config.ErrInvalidHost)},
		{"host_slash", sb(`network = lid.network(allow = ["a.example/path"])`), both(config.ErrInvalidHost)},
		{"host_port", sb(`network = lid.network(allow = ["a.example:443"])`), both(config.ErrInvalidHost)},
		{"host_inner_space", sb(`network = lid.network(allow = ["a b.example"])`), both(config.ErrInvalidHost)},
		{"host_at", sb(`network = lid.network(allow = ["user@a.example"])`), both(config.ErrInvalidHost)},
		{"host_empty", sb(`network = lid.network(allow = [""])`), both(config.ErrInvalidHost)},
		{"host_whitespace_only", sb(`network = lid.network(allow = ["   "])`), both(config.ErrInvalidHost)},
		{"host_solely_dots", sb(`network = lid.network(allow = ["..."])`), both(config.ErrInvalidHost)},
		{"host_solely_dots_hyphens", sb(`network = lid.network(allow = ["-.-"])`), both(config.ErrInvalidHost)},
		{"host_underscore", sb(`network = lid.network(allow = ["a_b.example"])`), both(config.ErrInvalidHost)},

		// --- hosts: secret hosts and add_hosts ---
		{"secret_host_port", sb(netOK,
			`secrets = [lid.secret("S", from_env = "E", hosts = ["bad:1"])]`), both(config.ErrInvalidHost)},
		{"add_hosts_bad_key", sb(`network = lid.network(allow = ["ok.example"], add_hosts = {"bad/host": "1.2.3.4"})`),
			both(config.ErrInvalidHost)},
		{"add_hosts_bad_ip", sb(`network = lid.network(allow = ["ok.example"], add_hosts = {"a.example": "999.1.1.1"})`),
			both(config.ErrInvalidHost)},
		{"add_hosts_ip_not_ip", sb(`network = lid.network(allow = ["ok.example"], add_hosts = {"a.example": "not-an-ip"})`),
			both(config.ErrInvalidHost)},

		// --- sizes (SPEC §Sizes) ---
		{"size_space", sb(`memory = "4 GiB"`), both(config.ErrInvalidSize)},
		{"size_zero_str", sb(`memory = "0MiB"`), both(config.ErrInvalidSize)},
		{"size_bad_unit", sb(`memory = "4TiB"`), both(config.ErrInvalidSize)},
		{"size_lowercase_unit", sb(`memory = "4gib"`), both(config.ErrInvalidSize)},
		{"size_no_unit", sb(`memory = "4"`), both(config.ErrInvalidSize)},
		{"size_empty_str", sb(`memory = ""`), both(config.ErrInvalidSize)},
		{"size_negative_int", sb(`memory = -1`), both(config.ErrInvalidSize)},
		{"size_zero_int", sb(`memory = 0`), both(config.ErrInvalidSize)},
		{"size_too_large_int", sb(`memory = 1048577`), both(config.ErrInvalidSize)},
		{"size_too_large_str", sb(`memory = "1025GiB"`), both(config.ErrInvalidSize)},
		{"disk_size_space", sb(`disk = "10 GB"`), both(config.ErrInvalidSize)},
		{"disk_size_zero", sb(`disk = 0`), both(config.ErrInvalidSize)},

		// --- cpus ---
		{"cpus_zero", sb(`cpus = 0`), both(config.ErrInvalidCPU)},
		{"cpus_negative", sb(`cpus = -1`), both(config.ErrInvalidCPU)},
		{"cpus_129", sb(`cpus = 129`), both(config.ErrInvalidCPU)},
		{"cpus_zero_float", sb(`cpus = 0.0`), both(config.ErrInvalidCPU)},
		{"cpus_over_128_float", sb(`cpus = 128.5`), both(config.ErrInvalidCPU)},

		// --- timeout ---
		{"timeout_zero", sb(`timeout = 0`), both(config.ErrInvalidTimeout)},
		{"timeout_negative", sb(`timeout = -5`), both(config.ErrInvalidTimeout)},
		{"timeout_banana", sb(`timeout = "banana"`), both(config.ErrInvalidTimeout)},
		{"timeout_zero_duration", sb(`timeout = "0s"`), both(config.ErrInvalidTimeout)},
		{"timeout_negative_duration", sb(`timeout = "-1m"`), both(config.ErrInvalidTimeout)},

		// --- workspace ---
		{"workspace_relative", sb(`workspace = "relative/path"`), both(config.ErrInvalidWorkspace)},
		{"workspace_empty", sb(`workspace = ""`), both(config.ErrInvalidWorkspace)},

		// --- mount_cwd ---
		{"mount_overlay", sb(`mount_cwd = "overlay"`), both(config.ErrInvalidMount)},
		{"mount_empty", sb(`mount_cwd = ""`), both(config.ErrInvalidMount)},
		{"mount_uppercase", sb(`mount_cwd = "RW"`), both(config.ErrInvalidMount)},

		// --- secret name ---
		{"secret_name_leading_digit", sb(netOK,
			`secrets = [lid.secret("1BAD", from_env = "E", hosts = ["a.example"])]`), both(config.ErrSecretName)},
		{"secret_name_empty", sb(netOK,
			`secrets = [lid.secret("", from_env = "E", hosts = ["a.example"])]`), both(config.ErrSecretName)},
		{"secret_name_hyphen", sb(netOK,
			`secrets = [lid.secret("BAD-NAME", from_env = "E", hosts = ["a.example"])]`), both(config.ErrSecretName)},
		{"secret_name_space", sb(netOK,
			`secrets = [lid.secret("BAD NAME", from_env = "E", hosts = ["a.example"])]`), both(config.ErrSecretName)},

		// --- secret sources: exactly one required ---
		{"secret_zero_sources", sb(netOK,
			`secrets = [lid.secret("S", hosts = ["a.example"])]`), both(config.ErrSecretSource)},
		{"secret_two_sources_env_value", sb(netOK,
			`secrets = [lid.secret("S", from_env = "E", value = "v", hosts = ["a.example"])]`), both(config.ErrSecretSource)},
		{"secret_two_sources_env_cmd", sb(netOK,
			`secrets = [lid.secret("S", from_env = "E", from_cmd = ["c"], hosts = ["a.example"])]`), both(config.ErrSecretSource)},
		{"secret_three_sources", sb(netOK,
			`secrets = [lid.secret("S", from_env = "E", from_cmd = ["c"], value = "v", hosts = ["a.example"])]`),
			both(config.ErrSecretSource)},

		// --- secret hosts ---
		{"secret_empty_hosts", sb(netOK,
			`secrets = [lid.secret("S", from_env = "E", hosts = [])]`), both(config.ErrSecretHosts)},
		{"github_empty_hosts", sb(netOK,
			`secrets = [lid.github(hosts = [])]`), both(config.ErrSecretHosts)},

		// --- network allow / allow_all ---
		{"empty_allow_no_args", sb(`network = lid.network()`), both(config.ErrEmptyAllow)},
		{"empty_allow_list", sb(`network = lid.network(allow = [])`), both(config.ErrEmptyAllow)},
		{"empty_allow_explicit_false", sb(`network = lid.network(allow = [], allow_all = False)`),
			both(config.ErrEmptyAllow)},
		{"allow_all_conflict", sb(`network = lid.network(allow = ["a.example"], allow_all = True)`),
			both(config.ErrAllowAllConflict)},

		// --- secrets require a network block ---
		{"secrets_no_network", sb(
			`secrets = [lid.secret("S", from_env = "E", hosts = ["a.example"])]`),
			[]error{config.ErrNoNetworkSecrets}},
		{"secrets_network_none", sb(`network = None`,
			`secrets = [lid.secret("S", from_env = "E", hosts = ["a.example"])]`),
			[]error{config.ErrNoNetworkSecrets}},

		// --- command ---
		{"command_empty", sb(`command = []`), both(config.ErrBadCommand)},
		{"command_non_string", sb(`command = ["ok", 3]`), both(config.ErrBadCommand)},

		// --- init ---
		{"init_non_string", sb(`init = [1]`), both(config.ErrBadCommand)},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			requireErrIs(t, tc.src, tc.want...)
		})
	}
}

// SPEC §lid.sandbox: unknown kwargs produce an ErrEval wrapping a message
// naming the kwarg.
func TestUnknownKwargNamesTheKwarg(t *testing.T) {
	err := requireErrIs(t, sb(`flavor = "x"`), config.ErrEval)
	if !strings.Contains(err.Error(), "flavor") {
		t.Fatalf("unknown-kwarg error %q does not name the kwarg %q", err, "flavor")
	}
}

// SPEC §lid.secret: return values are opaque; anything else inside
// secrets=[...] is an error.
func TestSecretValuesAreOpaque(t *testing.T) {
	cases := map[string]string{
		"plain_string": sb(netOK, `secrets = ["notasecret"]`),
		"dict":         sb(netOK, `secrets = [{"name": "S", "from_env": "E", "hosts": ["a.example"]}]`),
		"int":          sb(netOK, `secrets = [42]`),
		"nested_list":  sb(netOK, `secrets = [["S"]]`),
		"none":         sb(netOK, `secrets = [None]`),
	}
	for name, src := range cases {
		t.Run(name, func(t *testing.T) {
			requireErrIs(t, src, config.ErrEval)
		})
	}
}

// SPEC §Evaluation environment: starlark safety posture. All of these are
// evaluation failures wrapped as ErrEval.
func TestStarlarkSafety(t *testing.T) {
	cases := map[string]string{
		"syntax_error":   `lid.sandbox(`,
		"while_loop":     "while True:\n    pass\n",
		"recursion":      "def f():\n    return f()\nf()\n",
		"fail_builtin":   `fail("boom")`,
		"undefined_name": `os.getenv("HOME")`,
		// Execution step limit (10,000,000 steps): a loop far above the cap
		// must fail with ErrEval instead of running forever.
		"step_limit": "for i in range(100000000):\n    pass\n",
	}
	for name, src := range cases {
		t.Run(name, func(t *testing.T) {
			requireErrIs(t, src, config.ErrEval)
		})
	}
}

// SPEC §The lid module: builtin-argument failures match both ErrEval and the
// specific sentinel. Spot-check the dual matching explicitly.
func TestBuiltinErrorsMatchBothSentinels(t *testing.T) {
	err := requireErrIs(t, sb(`cpus = 129`), config.ErrInvalidCPU, config.ErrEval)
	// Sanity: the error must not spuriously match unrelated sentinels.
	if errors.Is(err, config.ErrInvalidTimeout) {
		t.Fatalf("cpus error %q unexpectedly matches ErrInvalidTimeout", err)
	}
	if errors.Is(err, config.ErrDuplicateProfile) {
		t.Fatalf("cpus error %q unexpectedly matches ErrDuplicateProfile", err)
	}
}
