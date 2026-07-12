//go:build acceptance

package acceptance

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/jingkaihe/matchlock/pkg/sdk"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCLISecretPlaceholderOverride(t *testing.T) {
	t.Parallel()

	stdout, stderr, exitCode := runCLIEnvWithTimeout(
		t,
		2*time.Minute,
		[]string{"GH_TOKEN=gho_real_token_acceptance"},
		"run", "--image", "alpine:latest",
		"--allow-host", "httpbin.org",
		"--secret", "GH_TOKEN@httpbin.org",
		"--secret-placeholder", "GH_TOKEN=gho_sandbox_placeholder",
		"--", "sh", "-c", `test "$GH_TOKEN" = "gho_sandbox_placeholder" && wget -q -O - --header "Authorization: Bearer $GH_TOKEN" https://httpbin.org/headers`,
	)
	require.Equal(t, 0, exitCode, "stdout: %s\nstderr: %s", stdout, stderr)
	assert.Contains(t, stdout, "gho_real_token_acceptance")
	assert.NotContains(t, stdout, "gho_sandbox_placeholder\"")
}

func TestCLISecretFileCustomPlaceholder(t *testing.T) {
	t.Parallel()

	dir := t.TempDir()
	secretFile := filepath.Join(dir, "secrets.json")
	require.NoError(t, os.WriteFile(secretFile, []byte(`{
		"GH_TOKEN": {
			"value": "gho_real_token_from_file",
			"placeholder": "gho_sandbox_placeholder_file",
			"hosts": ["httpbin.org"]
		}
	}`), 0644))

	stdout, stderr, exitCode := runCLIWithTimeout(
		t,
		2*time.Minute,
		"run", "--image", "alpine:latest",
		"--allow-host", "httpbin.org",
		"--secret-file", secretFile,
		"--", "sh", "-c", `test "$GH_TOKEN" = "gho_sandbox_placeholder_file" && wget -q -O - --header "Authorization: Bearer $GH_TOKEN" https://httpbin.org/headers`,
	)
	require.Equal(t, 0, exitCode, "stdout: %s\nstderr: %s", stdout, stderr)
	assert.Contains(t, stdout, "gho_real_token_from_file")
	assert.NotContains(t, stdout, "gho_sandbox_placeholder_file\"")
}

func TestSDKSecretCustomPlaceholder(t *testing.T) {
	t.Parallel()

	client := launchAlpineWithNetwork(t, sdk.New("alpine:latest").
		AllowHost("httpbin.org").
		AddSecretWithPlaceholder("GH_TOKEN", "gho_real_token_sdk", "gho_sandbox_placeholder_sdk", "httpbin.org"),
	)

	result, err := client.Exec(context.Background(), `sh -c 'printf "%s\n" "$GH_TOKEN"; wget -q -O - --header "Authorization: Bearer $GH_TOKEN" https://httpbin.org/headers'`)
	require.NoError(t, err)

	lines := strings.Split(strings.TrimSpace(result.Stdout), "\n")
	require.NotEmpty(t, lines)
	assert.Equal(t, "gho_sandbox_placeholder_sdk", lines[0])
	assert.Contains(t, result.Stdout, "gho_real_token_sdk")
	assert.NotContains(t, result.Stdout, "Authorization: Bearer gho_sandbox_placeholder_sdk")
}
