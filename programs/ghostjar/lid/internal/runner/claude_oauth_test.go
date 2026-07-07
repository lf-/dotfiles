package runner

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"io"
	"net/http"
	"os"
	"strings"
	"testing"
)

// makeCredsJSON builds a valid credentials JSON blob with the given fields.
func makeCredsJSON(access, refresh string, expiresAtMS int64) string {
	j := map[string]any{
		"claudeAiOauth": map[string]any{
			"accessToken":  access,
			"refreshToken": refresh,
			"expiresAt":    expiresAtMS,
			"scopes":       []string{"claude.ai"},
		},
	}
	data, _ := json.Marshal(j)
	return string(data)
}

func nopWriteFile(_ string, _ []byte, _ os.FileMode) error { return nil }

// makeRefreshDoer returns an HTTPDoer that responds to a refresh request.
func makeRefreshDoer(access, refresh string, expiresIn int64, omitRefreshToken bool) HTTPDoer {
	return &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
		resp := map[string]any{
			"access_token": access,
			"expires_in":   expiresIn,
		}
		if !omitRefreshToken {
			resp["refresh_token"] = refresh
		}
		data, _ := json.Marshal(resp)
		return &http.Response{
			StatusCode: 200,
			Body:       io.NopCloser(bytes.NewReader(data)),
		}, nil
	}}
}

type fakeHTTPDoer struct {
	do func(*http.Request) (*http.Response, error)
}

func (f *fakeHTTPDoer) Do(req *http.Request) (*http.Response, error) { return f.do(req) }

func TestParseCredsJSON(t *testing.T) {
	data := []byte(makeCredsJSON("acc", "ref", 9999999))
	creds, err := parseCredsJSON(data)
	if err != nil {
		t.Fatalf("parseCredsJSON: %v", err)
	}
	if creds.AccessToken != "acc" {
		t.Errorf("AccessToken = %q", creds.AccessToken)
	}
	if creds.RefreshToken != "ref" {
		t.Errorf("RefreshToken = %q", creds.RefreshToken)
	}
	if creds.ExpiresAtMS != 9999999 {
		t.Errorf("ExpiresAtMS = %d", creds.ExpiresAtMS)
	}
}

func TestParseCredsJSONMissingFields(t *testing.T) {
	cases := []struct {
		name string
		json string
	}{
		{"missing_access", `{"claudeAiOauth":{"refreshToken":"r","expiresAt":1}}`},
		{"missing_refresh", `{"claudeAiOauth":{"accessToken":"a","expiresAt":1}}`},
		{"missing_expires", `{"claudeAiOauth":{"accessToken":"a","refreshToken":"r"}}`},
		{"missing_oauth", `{}`},
		{"invalid_json", `{not json}`},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := parseCredsJSON([]byte(tc.json))
			if err == nil {
				t.Errorf("expected error for %s", tc.name)
			}
		})
	}
}

func TestCredentialsFileResolution(t *testing.T) {
	credsJSON := makeCredsJSON("access1", "refresh1", 9_999_999_999_999)
	deps := ClaudeOAuthDeps{
		Run:       func(ctx context.Context, argv []string) (string, error) { return "", errors.New("no keychain") },
		Getenv:    func(string) string { return "" },
		ReadFile:  func(path string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer:  nil,
		NowMS:     func() int64 { return 0 },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "/explicit/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	if tok != "access1" {
		t.Errorf("token = %q, want access1", tok)
	}
}

func TestKeychainResolution(t *testing.T) {
	credsJSON := makeCredsJSON("keychain-token", "kc-refresh", 9_999_999_999_999)
	deps := ClaudeOAuthDeps{
		Run: func(ctx context.Context, argv []string) (string, error) {
			// Respond to both `-w` and non-`-w` security calls.
			if len(argv) > 0 && argv[0] == "security" {
				for _, a := range argv {
					if a == "-w" {
						return credsJSON, nil
					}
				}
				// Non-w call (account extraction).
				return `    "acct"<blob>="myaccount"` + "\n", nil
			}
			return "", errors.New("unexpected command")
		},
		Getenv:    func(string) string { return "" },
		ReadFile:  func(string) ([]byte, error) { return nil, errors.New("no file") },
		HTTPDoer:  nil,
		NowMS:     func() int64 { return 0 },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "", nil, deps)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if provider.source.kind != credSourceKeychain {
		t.Errorf("source kind = %v, want credSourceKeychain", provider.source.kind)
	}
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	if tok != "keychain-token" {
		t.Errorf("token = %q, want keychain-token", tok)
	}
}

func TestFileFallbackWhenKeychainFails(t *testing.T) {
	credsJSON := makeCredsJSON("file-token", "file-refresh", 9_999_999_999_999)
	deps := ClaudeOAuthDeps{
		Run:    func(ctx context.Context, argv []string) (string, error) { return "", errors.New("keychain error") },
		Getenv: func(k string) string { return "" },
		ReadFile: func(path string) ([]byte, error) {
			if strings.HasSuffix(path, ".credentials.json") {
				return []byte(credsJSON), nil
			}
			return nil, errors.New("not found")
		},
		HTTPDoer:  nil,
		NowMS:     func() int64 { return 0 },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "", io.Discard, deps)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if provider.source.kind != credSourceFile {
		t.Errorf("source kind = %v, want credSourceFile", provider.source.kind)
	}
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	if tok != "file-token" {
		t.Errorf("token = %q, want file-token", tok)
	}
}

func TestRefreshTriggersWhenNearExpiry(t *testing.T) {
	// Token expires in 5 minutes (< 10-minute threshold), so refresh should fire.
	nowMS := int64(1_000_000_000_000)
	expiresAtMS := nowMS + 5*60*1000 // 5 minutes from now

	credsJSON := makeCredsJSON("old-token", "old-refresh", expiresAtMS)

	deps := ClaudeOAuthDeps{
		Run:       func(ctx context.Context, argv []string) (string, error) { return "", errors.New("no keychain") },
		Getenv:    func(string) string { return "" },
		ReadFile:  func(path string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer:  makeRefreshDoer("new-token", "new-refresh", 3600, false),
		NowMS:     func() int64 { return nowMS },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("provider: %v", err)
	}
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	if tok != "new-token" {
		t.Errorf("token = %q, want new-token (refresh should have fired)", tok)
	}
}

func TestNoRefreshWhenTokenFresh(t *testing.T) {
	nowMS := int64(1_000_000_000_000)
	expiresAtMS := nowMS + 2*60*60*1000 // 2 hours from now (well beyond threshold)

	credsJSON := makeCredsJSON("fresh-token", "fresh-refresh", expiresAtMS)
	httpCalled := false

	deps := ClaudeOAuthDeps{
		Run:      func(ctx context.Context, argv []string) (string, error) { return "", errors.New("no keychain") },
		Getenv:   func(string) string { return "" },
		ReadFile: func(path string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer: &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
			httpCalled = true
			return nil, errors.New("should not call")
		}},
		NowMS:     func() int64 { return nowMS },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("provider: %v", err)
	}
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	if httpCalled {
		t.Errorf("HTTP refresh should not be called when token is fresh")
	}
	if tok != "fresh-token" {
		t.Errorf("token = %q, want fresh-token", tok)
	}
}

func TestRefreshKeepsOldRefreshTokenWhenAbsent(t *testing.T) {
	nowMS := int64(1_000_000_000_000)
	expiresAtMS := nowMS + 1*60*1000 // 1 minute: triggers refresh

	credsJSON := makeCredsJSON("old-access", "original-refresh", expiresAtMS)

	deps := ClaudeOAuthDeps{
		Run:       func(ctx context.Context, argv []string) (string, error) { return "", errors.New("no keychain") },
		Getenv:    func(string) string { return "" },
		ReadFile:  func(path string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer:  makeRefreshDoer("newer-access", "", 3600, true), // omit refresh_token
		NowMS:     func() int64 { return nowMS },
		WriteFile: nopWriteFile,
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("provider: %v", err)
	}
	_, err = provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken: %v", err)
	}
	// Inspect the stored creds: refresh token should be the original.
	provider.mu.Lock()
	rt := provider.creds.RefreshToken
	provider.mu.Unlock()
	if rt != "original-refresh" {
		t.Errorf("refresh token = %q, want original-refresh (kept when absent from response)", rt)
	}
}

func TestPersistenceFailureNonFatal(t *testing.T) {
	nowMS := int64(1_000_000_000_000)
	expiresAtMS := nowMS + 1*60*1000 // triggers refresh

	credsJSON := makeCredsJSON("old-access", "old-refresh", expiresAtMS)

	deps := ClaudeOAuthDeps{
		Run:      func(ctx context.Context, argv []string) (string, error) { return "", errors.New("no keychain") },
		Getenv:   func(string) string { return "" },
		ReadFile: func(path string) ([]byte, error) { return []byte(credsJSON), nil },
		HTTPDoer: makeRefreshDoer("new-access", "new-refresh", 3600, false),
		NowMS:    func() int64 { return nowMS },
		// Persistence always fails — should not surface as an error.
		WriteFile: func(path string, data []byte, mode os.FileMode) error {
			return errors.New("disk full")
		},
	}

	provider, err := newClaudeOAuthProviderWithDeps(context.Background(), "/creds.json", nil, deps)
	if err != nil {
		t.Fatalf("provider: %v", err)
	}
	// AccessToken should succeed even though persistence fails.
	tok, err := provider.AccessToken(context.Background())
	if err != nil {
		t.Fatalf("AccessToken should succeed despite persistence failure: %v", err)
	}
	if tok != "new-access" {
		t.Errorf("token = %q, want new-access", tok)
	}
}
