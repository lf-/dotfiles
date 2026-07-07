package runner

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"regexp"
	"runtime"
	"strings"
	"sync"
	"time"
)

const (
	anthropicClientID       = "9d1c250a-e61b-44d9-88ed-5944d1962f5e"
	anthropicTokenURL       = "https://console.anthropic.com/v1/oauth/token"
	tokenRefreshThresholdMS = 10 * 60 * 1000 // 10 minutes in ms
	keychainService         = "Claude Code-credentials"
)

// claudeOAuthCredentials holds parsed OAuth credential fields from
// ~/.claude/.credentials.json or the macOS Keychain.
type claudeOAuthCredentials struct {
	AccessToken      string
	RefreshToken     string
	ExpiresAtMS      int64
	Scopes           []string
	SubscriptionType string
	RateLimitTier    string
}

// claudeCredsJSON is the JSON shape of the credentials file / keychain blob.
type claudeCredsJSON struct {
	ClaudeAiOauth struct {
		AccessToken      string   `json:"accessToken"`
		RefreshToken     string   `json:"refreshToken"`
		ExpiresAt        int64    `json:"expiresAt"`
		Scopes           []string `json:"scopes"`
		SubscriptionType string   `json:"subscriptionType,omitempty"`
		RateLimitTier    string   `json:"rateLimitTier,omitempty"`
	} `json:"claudeAiOauth"`
}

// HTTPDoer is an interface for making HTTP requests (injectable in tests).
type HTTPDoer interface {
	Do(req *http.Request) (*http.Response, error)
}

// ClaudeOAuthDeps holds injectable dependencies for ClaudeOAuthProvider.
// In production, use NewClaudeOAuthProvider (which wires real deps).
// In tests, supply stubs.
type ClaudeOAuthDeps struct {
	// Run executes a shell command and returns stdout. Used for keychain access.
	Run CommandRunner
	// Getenv returns an environment variable.
	Getenv func(string) string
	// ReadFile reads a file from the host filesystem.
	ReadFile func(string) ([]byte, error)
	// HTTPDoer performs HTTP requests (for token refresh).
	HTTPDoer HTTPDoer
	// NowMS returns the current time in milliseconds since epoch.
	NowMS func() int64
	// WriteFile writes bytes to a file with the given mode (for cred persistence).
	WriteFile func(path string, data []byte, mode os.FileMode) error
}

func defaultDeps() ClaudeOAuthDeps {
	return ClaudeOAuthDeps{
		Run:      execCommand,
		Getenv:   os.Getenv,
		ReadFile: os.ReadFile,
		HTTPDoer: http.DefaultClient,
		NowMS:    func() int64 { return time.Now().UnixMilli() },
		WriteFile: func(path string, data []byte, mode os.FileMode) error {
			return atomicWriteFile(path, data, mode)
		},
	}
}

// ClaudeOAuthProvider holds Claude OAuth credentials and provides a
// thread-safe access token, refreshing proactively when near expiry.
type ClaudeOAuthProvider struct {
	mu     sync.Mutex
	creds  claudeOAuthCredentials
	deps   ClaudeOAuthDeps
	source credSource // how/where creds were loaded (for persistence)
}

type credSourceKind int

const (
	credSourceFile     credSourceKind = iota
	credSourceKeychain credSourceKind = iota
)

type credSource struct {
	kind    credSourceKind
	path    string // for credSourceFile
	account string // for credSourceKeychain ("acct" field from security output)
}

// NewClaudeOAuthProvider creates a provider wired to real OS/network deps.
// credentialsFile is the configured path from the starlark config (may be "").
// logw is a diagnostic sink for non-fatal warnings.
func NewClaudeOAuthProvider(ctx context.Context, credentialsFile string, logw io.Writer) (*ClaudeOAuthProvider, error) {
	return newClaudeOAuthProviderWithDeps(ctx, credentialsFile, logw, defaultDeps())
}

func newClaudeOAuthProviderWithDeps(ctx context.Context, credentialsFile string, logw io.Writer, deps ClaudeOAuthDeps) (*ClaudeOAuthProvider, error) {
	creds, src, err := loadClaudeCredentials(ctx, credentialsFile, logw, deps)
	if err != nil {
		return nil, err
	}
	return &ClaudeOAuthProvider{
		creds:  creds,
		deps:   deps,
		source: src,
	}, nil
}

// AccessToken returns a valid access token, refreshing if near expiry.
// It is safe for concurrent use.
func (p *ClaudeOAuthProvider) AccessToken(ctx context.Context) (string, error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	nowMS := p.deps.NowMS()
	if p.creds.ExpiresAtMS <= nowMS+tokenRefreshThresholdMS {
		newCreds, err := p.refreshCreds(ctx, p.creds)
		if err != nil {
			return "", fmt.Errorf("claude oauth token refresh: %w", err)
		}
		p.creds = newCreds
	}
	return p.creds.AccessToken, nil
}

func (p *ClaudeOAuthProvider) refreshCreds(ctx context.Context, old claudeOAuthCredentials) (claudeOAuthCredentials, error) {
	body, err := json.Marshal(map[string]string{
		"grant_type":    "refresh_token",
		"client_id":     anthropicClientID,
		"refresh_token": old.RefreshToken,
	})
	if err != nil {
		return claudeOAuthCredentials{}, err
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodPost, anthropicTokenURL, bytes.NewReader(body))
	if err != nil {
		return claudeOAuthCredentials{}, err
	}
	req.Header.Set("Content-Type", "application/json")

	resp, err := p.deps.HTTPDoer.Do(req)
	if err != nil {
		return claudeOAuthCredentials{}, fmt.Errorf("HTTP request: %w", err)
	}
	defer resp.Body.Close()

	respBody, err := io.ReadAll(resp.Body)
	if err != nil {
		return claudeOAuthCredentials{}, fmt.Errorf("read response: %w", err)
	}
	if resp.StatusCode != http.StatusOK {
		return claudeOAuthCredentials{}, fmt.Errorf("HTTP %d: %s", resp.StatusCode, strings.TrimSpace(string(respBody)))
	}

	var tok struct {
		AccessToken  string `json:"access_token"`
		ExpiresIn    int64  `json:"expires_in"` // seconds
		RefreshToken string `json:"refresh_token,omitempty"`
	}
	if err := json.Unmarshal(respBody, &tok); err != nil {
		return claudeOAuthCredentials{}, fmt.Errorf("parse response: %w", err)
	}
	if tok.AccessToken == "" {
		return claudeOAuthCredentials{}, fmt.Errorf("response missing access_token")
	}
	if tok.ExpiresIn <= 0 {
		return claudeOAuthCredentials{}, fmt.Errorf("response missing expires_in")
	}

	rt := tok.RefreshToken
	if rt == "" {
		rt = old.RefreshToken // keep old if absent
	}

	newCreds := claudeOAuthCredentials{
		AccessToken:      tok.AccessToken,
		RefreshToken:     rt,
		ExpiresAtMS:      p.deps.NowMS() + tok.ExpiresIn*1000,
		Scopes:           old.Scopes,
		SubscriptionType: old.SubscriptionType,
		RateLimitTier:    old.RateLimitTier,
	}

	// Best-effort persistence: never crash the run on failure.
	if persistErr := p.persistCreds(newCreds); persistErr != nil {
		// logw not easily available here; return creds and caller may log
		_ = persistErr // silently swallow; caller has no logw here
	}

	return newCreds, nil
}

// persistCreds writes updated credentials back to their original source.
// Any error is returned (caller decides whether to log and continue).
func (p *ClaudeOAuthProvider) persistCreds(creds claudeOAuthCredentials) error {
	data, err := marshalCreds(creds)
	if err != nil {
		return fmt.Errorf("marshal creds: %w", err)
	}

	switch p.source.kind {
	case credSourceFile:
		return p.deps.WriteFile(p.source.path, data, 0o600)
	case credSourceKeychain:
		if p.source.account == "" {
			return fmt.Errorf("keychain account not captured; skipping persistence")
		}
		_, err := p.deps.Run(context.Background(), []string{
			"security", "add-generic-password",
			"-U",
			"-s", keychainService,
			"-a", p.source.account,
			"-w", string(data),
		})
		return err
	}
	return nil
}

func marshalCreds(creds claudeOAuthCredentials) ([]byte, error) {
	var j claudeCredsJSON
	j.ClaudeAiOauth.AccessToken = creds.AccessToken
	j.ClaudeAiOauth.RefreshToken = creds.RefreshToken
	j.ClaudeAiOauth.ExpiresAt = creds.ExpiresAtMS
	j.ClaudeAiOauth.Scopes = creds.Scopes
	j.ClaudeAiOauth.SubscriptionType = creds.SubscriptionType
	j.ClaudeAiOauth.RateLimitTier = creds.RateLimitTier
	return json.MarshalIndent(j, "", "  ")
}

// loadClaudeCredentials resolves creds according to the priority order in DESIGN.
func loadClaudeCredentials(ctx context.Context, configuredPath string, logw io.Writer, deps ClaudeOAuthDeps) (claudeOAuthCredentials, credSource, error) {
	if configuredPath != "" {
		// Explicit path from config.
		data, err := deps.ReadFile(configuredPath)
		if err != nil {
			return claudeOAuthCredentials{}, credSource{}, fmt.Errorf("read credentials file %q: %w", configuredPath, err)
		}
		creds, err := parseCredsJSON(data)
		if err != nil {
			return claudeOAuthCredentials{}, credSource{}, fmt.Errorf("parse credentials file %q: %w", configuredPath, err)
		}
		return creds, credSource{kind: credSourceFile, path: configuredPath}, nil
	}

	// Auto-detect: macOS Keychain first, then file.
	if runtime.GOOS == "darwin" {
		creds, account, err := tryKeychainLoad(ctx, deps)
		if err == nil {
			return creds, credSource{kind: credSourceKeychain, account: account}, nil
		}
		if logw != nil {
			fmt.Fprintf(logw, "lid: claude_subscription: keychain load failed (%v); trying ~/.claude/.credentials.json\n", err)
		}
	}

	// Fall back to file.
	home := deps.Getenv("HOME")
	if home == "" {
		home = os.Getenv("HOME")
	}
	filePath := home + "/.claude/.credentials.json"
	data, err := deps.ReadFile(filePath)
	if err != nil {
		return claudeOAuthCredentials{}, credSource{}, fmt.Errorf(
			"claude subscription credentials not found: tried keychain service %q and %s: %w\n"+
				"  Ensure you are logged in with `claude login` and have a Pro/Max subscription.",
			keychainService, filePath, err)
	}
	creds, err := parseCredsJSON(data)
	if err != nil {
		return claudeOAuthCredentials{}, credSource{}, fmt.Errorf("parse credentials file %q: %w", filePath, err)
	}
	return creds, credSource{kind: credSourceFile, path: filePath}, nil
}

// tryKeychainLoad reads credentials from the macOS Keychain.
// Returns (creds, account, error).
func tryKeychainLoad(ctx context.Context, deps ClaudeOAuthDeps) (claudeOAuthCredentials, string, error) {
	// Get the JSON blob.
	jsonStr, err := deps.Run(ctx, []string{"security", "find-generic-password", "-s", keychainService, "-w"})
	if err != nil {
		return claudeOAuthCredentials{}, "", fmt.Errorf("security find-generic-password: %w", err)
	}
	jsonStr = strings.TrimSpace(jsonStr)

	creds, err := parseCredsJSON([]byte(jsonStr))
	if err != nil {
		return claudeOAuthCredentials{}, "", fmt.Errorf("parse keychain blob: %w", err)
	}

	// Get the account name (needed for -U re-save).
	account := extractKeychainAccount(ctx, deps)

	return creds, account, nil
}

// acctRe matches the "acct"<blob>="<account>" line in security output.
var acctRe = regexp.MustCompile(`"acct"[^=]*="([^"]*)"`)

func extractKeychainAccount(ctx context.Context, deps ClaudeOAuthDeps) string {
	out, err := deps.Run(ctx, []string{"security", "find-generic-password", "-s", keychainService})
	if err != nil {
		return ""
	}
	m := acctRe.FindStringSubmatch(out)
	if m == nil {
		return ""
	}
	return m[1]
}

func parseCredsJSON(data []byte) (claudeOAuthCredentials, error) {
	var j claudeCredsJSON
	if err := json.Unmarshal(data, &j); err != nil {
		return claudeOAuthCredentials{}, fmt.Errorf("invalid JSON: %w", err)
	}
	o := j.ClaudeAiOauth
	if o.AccessToken == "" {
		return claudeOAuthCredentials{}, fmt.Errorf("missing or empty accessToken in claudeAiOauth")
	}
	if o.RefreshToken == "" {
		return claudeOAuthCredentials{}, fmt.Errorf("missing or empty refreshToken in claudeAiOauth")
	}
	if o.ExpiresAt == 0 {
		return claudeOAuthCredentials{}, fmt.Errorf("missing expiresAt in claudeAiOauth")
	}
	return claudeOAuthCredentials{
		AccessToken:      o.AccessToken,
		RefreshToken:     o.RefreshToken,
		ExpiresAtMS:      o.ExpiresAt,
		Scopes:           o.Scopes,
		SubscriptionType: o.SubscriptionType,
		RateLimitTier:    o.RateLimitTier,
	}, nil
}

// atomicWriteFile writes data to path atomically (write temp, chmod, rename).
func atomicWriteFile(path string, data []byte, mode os.FileMode) error {
	tmp := path + ".tmp"
	if err := os.WriteFile(tmp, data, mode); err != nil {
		return fmt.Errorf("write temp file: %w", err)
	}
	if err := os.Chmod(tmp, mode); err != nil {
		_ = os.Remove(tmp)
		return fmt.Errorf("chmod temp file: %w", err)
	}
	if err := os.Rename(tmp, path); err != nil {
		_ = os.Remove(tmp)
		return fmt.Errorf("rename temp file: %w", err)
	}
	return nil
}
