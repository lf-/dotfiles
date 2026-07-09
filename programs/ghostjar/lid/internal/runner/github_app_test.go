package runner

import (
	"bytes"
	"context"
	"crypto"
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha256"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"encoding/pem"
	"fmt"
	"io"
	"net/http"
	"reflect"
	"strings"
	"testing"
	"time"

	"jade.fyi/ghostjar/lid/internal/config"
)

func msToRFC3339(ms int64) string {
	return time.UnixMilli(ms).UTC().Format(time.RFC3339)
}

// testRSAKeyPEM generates a throwaway RSA key and returns it PKCS1-PEM encoded
// plus the *rsa.PrivateKey for verification.
func testRSAKeyPEM(t *testing.T) (string, *rsa.PrivateKey) {
	t.Helper()
	key, err := rsa.GenerateKey(rand.Reader, 2048)
	if err != nil {
		t.Fatalf("generate key: %v", err)
	}
	der := x509.MarshalPKCS1PrivateKey(key)
	pemBytes := pem.EncodeToMemory(&pem.Block{Type: "RSA PRIVATE KEY", Bytes: der})
	return string(pemBytes), key
}

func TestKeychainArgv(t *testing.T) {
	cases := []struct {
		goos, service, account string
		want                   []string
	}{
		{"darwin", "svc", "", []string{"security", "find-generic-password", "-w", "-s", "svc"}},
		{"darwin", "svc", "me", []string{"security", "find-generic-password", "-w", "-s", "svc", "-a", "me"}},
		{"linux", "svc", "", []string{"secret-tool", "lookup", "service", "svc"}},
		{"linux", "svc", "me", []string{"secret-tool", "lookup", "service", "svc", "account", "me"}},
		{"windows", "svc", "", nil},
	}
	for _, c := range cases {
		got := keychainArgv(c.goos, c.service, c.account)
		if !reflect.DeepEqual(got, c.want) {
			t.Errorf("keychainArgv(%q,%q,%q) = %v, want %v", c.goos, c.service, c.account, got, c.want)
		}
	}
}

func TestKeychainCredentialTrimsAndErrors(t *testing.T) {
	run := func(_ context.Context, argv []string) (string, error) {
		return "the-pem-value\n", nil
	}
	got, err := keychainCredential(context.Background(), run, config.Source{Kind: config.SourceKeychain, Service: "svc"})
	if err != nil {
		t.Fatalf("keychainCredential: %v", err)
	}
	if got != "the-pem-value" {
		t.Errorf("value = %q, want trimmed", got)
	}

	// Wrong kind.
	if _, err := keychainCredential(context.Background(), run, config.Source{Kind: config.SourceEnv}); err == nil {
		t.Error("expected error for non-keychain source")
	}
	// Empty output.
	empty := func(_ context.Context, _ []string) (string, error) { return "\n", nil }
	if _, err := keychainCredential(context.Background(), empty, config.Source{Kind: config.SourceKeychain, Service: "svc"}); err == nil {
		t.Error("expected error for empty keychain value")
	}
}

func TestBuildAppJWT(t *testing.T) {
	pemStr, key := testRSAKeyPEM(t)
	parsed, err := parseRSAPrivateKey([]byte(pemStr))
	if err != nil {
		t.Fatalf("parseRSAPrivateKey: %v", err)
	}

	var iat int64 = 1_700_000_000
	jwt, err := buildAppJWT(12345, parsed, iat, githubAppJWTLifetimeSeconds)
	if err != nil {
		t.Fatalf("buildAppJWT: %v", err)
	}
	parts := strings.Split(jwt, ".")
	if len(parts) != 3 {
		t.Fatalf("JWT has %d parts, want 3", len(parts))
	}

	// Verify claims.
	claimsJSON, err := base64.RawURLEncoding.DecodeString(parts[1])
	if err != nil {
		t.Fatalf("decode claims: %v", err)
	}
	var claims struct {
		Iss string `json:"iss"`
		Iat int64  `json:"iat"`
		Exp int64  `json:"exp"`
	}
	if err := json.Unmarshal(claimsJSON, &claims); err != nil {
		t.Fatalf("unmarshal claims: %v", err)
	}
	if claims.Iss != "12345" {
		t.Errorf("iss = %q, want 12345", claims.Iss)
	}
	if claims.Iat != iat {
		t.Errorf("iat = %d, want %d", claims.Iat, iat)
	}
	if claims.Exp != iat+githubAppJWTLifetimeSeconds {
		t.Errorf("exp = %d, want %d", claims.Exp, iat+githubAppJWTLifetimeSeconds)
	}
	if claims.Exp-claims.Iat > 600 {
		t.Errorf("JWT lifetime %d exceeds 10 min", claims.Exp-claims.Iat)
	}

	// Verify signature against the public key.
	signingInput := parts[0] + "." + parts[1]
	sig, err := base64.RawURLEncoding.DecodeString(parts[2])
	if err != nil {
		t.Fatalf("decode sig: %v", err)
	}
	sum := sha256.Sum256([]byte(signingInput))
	if err := rsa.VerifyPKCS1v15(&key.PublicKey, crypto.SHA256, sum[:], sig); err != nil {
		t.Errorf("signature verify failed: %v", err)
	}
}

func TestParseRSAPrivateKeyPKCS8(t *testing.T) {
	key, _ := rsa.GenerateKey(rand.Reader, 2048)
	der, err := x509.MarshalPKCS8PrivateKey(key)
	if err != nil {
		t.Fatalf("marshal pkcs8: %v", err)
	}
	pemBytes := pem.EncodeToMemory(&pem.Block{Type: "PRIVATE KEY", Bytes: der})
	if _, err := parseRSAPrivateKey(pemBytes); err != nil {
		t.Fatalf("parse PKCS8: %v", err)
	}
	if _, err := parseRSAPrivateKey([]byte("not a pem")); err == nil {
		t.Error("expected error for garbage PEM")
	}
}

func TestRepoNames(t *testing.T) {
	cases := []struct {
		in   []string
		want []string
	}{
		{nil, nil},
		{[]string{"octo/hello"}, []string{"hello"}},
		{[]string{"octo/hello", "octo/world"}, []string{"hello", "world"}},
		{[]string{"noowner"}, []string{"noowner"}},
	}
	for _, c := range cases {
		got := repoNames(c.in)
		if !reflect.DeepEqual(got, c.want) {
			t.Errorf("repoNames(%v) = %v, want %v", c.in, got, c.want)
		}
	}
}

func TestGitHubAuthHeader(t *testing.T) {
	const tok = "ghs_abc"
	basic := "Basic " + base64.StdEncoding.EncodeToString([]byte("x-access-token:"+tok))
	cases := []struct {
		path string
		want string
	}{
		{"/octo/repo.git/info/refs", basic},
		{"/octo/repo.git/git-upload-pack", basic},
		{"/octo/repo.git/git-receive-pack", basic},
		{"/repos/octo/repo/installation", "token " + tok},
		{"/graphql", "token " + tok},
		{"/user", "token " + tok},
	}
	for _, c := range cases {
		if got := githubAuthHeader(c.path, tok); got != c.want {
			t.Errorf("githubAuthHeader(%q) = %q, want %q", c.path, got, c.want)
		}
	}
}

// ghAppProvider builds a provider with a stub keychain returning pemStr and a
// controllable clock/HTTP doer.
func ghAppProvider(t *testing.T, src config.GitHubAppSource, pemStr string, now *int64, doer HTTPDoer) *GitHubAppProvider {
	t.Helper()
	return newGitHubAppProviderWithDeps(src, GitHubAppDeps{
		Run: func(_ context.Context, _ []string) (string, error) {
			return pemStr, nil
		},
		HTTPDoer: doer,
		NowMS:    func() int64 { return *now },
	})
}

func jsonResp(status int, v any) *http.Response {
	data, _ := json.Marshal(v)
	return &http.Response{StatusCode: status, Body: io.NopCloser(bytes.NewReader(data))}
}

func TestGitHubAppProviderMintsAndReuses(t *testing.T) {
	pemStr, _ := testRSAKeyPEM(t)
	now := int64(1_700_000_000_000)
	mints := 0

	doer := &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
		if strings.Contains(req.URL.Path, "/access_tokens") {
			mints++
			if !strings.HasPrefix(req.Header.Get("Authorization"), "Bearer ") {
				t.Errorf("access_tokens missing Bearer auth")
			}
			// expires in 1h from now.
			return jsonResp(201, map[string]any{
				"token":      fmt.Sprintf("ghs_token_%d", mints),
				"expires_at": msToRFC3339(now + 60*60*1000),
			}), nil
		}
		t.Fatalf("unexpected request path %q", req.URL.Path)
		return nil, nil
	}}

	src := config.GitHubAppSource{
		AppID:          42,
		InstallationID: 99,
		PrivateKey:     config.Source{Kind: config.SourceKeychain, Service: "svc"},
		Repositories:   []string{"octo/hello"},
	}
	p := ghAppProvider(t, src, pemStr, &now, doer)

	tok1, err := p.Token(context.Background())
	if err != nil {
		t.Fatalf("Token: %v", err)
	}
	if tok1 != "ghs_token_1" {
		t.Errorf("tok1 = %q", tok1)
	}
	// Second call well before expiry: cached, no new mint.
	tok2, err := p.Token(context.Background())
	if err != nil {
		t.Fatalf("Token: %v", err)
	}
	if tok2 != "ghs_token_1" || mints != 1 {
		t.Errorf("expected cached token (mints=%d, tok=%q)", mints, tok2)
	}

	// Advance to within 5 min of expiry: should re-mint.
	now += 56 * 60 * 1000 // now 56 min in; expiry at 60 min -> 4 min left
	tok3, err := p.Token(context.Background())
	if err != nil {
		t.Fatalf("Token: %v", err)
	}
	if tok3 != "ghs_token_2" || mints != 2 {
		t.Errorf("expected re-mint (mints=%d, tok=%q)", mints, tok3)
	}
}

func TestGitHubAppProviderDiscoversInstallation(t *testing.T) {
	pemStr, _ := testRSAKeyPEM(t)
	now := int64(1_700_000_000_000)
	var gotInstallURL, gotTokenURL string

	doer := &fakeHTTPDoer{func(req *http.Request) (*http.Response, error) {
		switch {
		case strings.HasSuffix(req.URL.Path, "/installation"):
			gotInstallURL = req.URL.Path
			return jsonResp(200, map[string]any{"id": 7777}), nil
		case strings.Contains(req.URL.Path, "/access_tokens"):
			gotTokenURL = req.URL.Path
			// verify body carries repo NAMES (short) and permissions.
			body, _ := io.ReadAll(req.Body)
			var b struct {
				Repositories []string          `json:"repositories"`
				Permissions  map[string]string `json:"permissions"`
			}
			_ = json.Unmarshal(body, &b)
			if !reflect.DeepEqual(b.Repositories, []string{"hello"}) {
				t.Errorf("body repositories = %v, want [hello]", b.Repositories)
			}
			if b.Permissions["contents"] != "write" {
				t.Errorf("body permissions = %v", b.Permissions)
			}
			return jsonResp(201, map[string]any{
				"token":      "ghs_disc",
				"expires_at": msToRFC3339(now + 60*60*1000),
			}), nil
		}
		t.Fatalf("unexpected path %q", req.URL.Path)
		return nil, nil
	}}

	src := config.GitHubAppSource{
		AppID:        42,
		PrivateKey:   config.Source{Kind: config.SourceKeychain, Service: "svc"},
		Repositories: []string{"octo/hello"},
		Permissions:  map[string]string{"contents": "write"},
	}
	p := ghAppProvider(t, src, pemStr, &now, doer)

	tok, err := p.Token(context.Background())
	if err != nil {
		t.Fatalf("Token: %v", err)
	}
	if tok != "ghs_disc" {
		t.Errorf("tok = %q", tok)
	}
	if !strings.Contains(gotInstallURL, "octo/hello/installation") {
		t.Errorf("install discovery URL = %q", gotInstallURL)
	}
	if !strings.Contains(gotTokenURL, "/app/installations/7777/access_tokens") {
		t.Errorf("token URL = %q (expected discovered id 7777)", gotTokenURL)
	}
}

func TestGitHubAppProviderLazyNoIO(t *testing.T) {
	// Constructing a provider must not read the keychain or hit the network.
	keychainCalls := 0
	httpCalls := 0
	deps := GitHubAppDeps{
		Run: func(_ context.Context, _ []string) (string, error) {
			keychainCalls++
			return "", nil
		},
		HTTPDoer: &fakeHTTPDoer{func(*http.Request) (*http.Response, error) {
			httpCalls++
			return jsonResp(200, map[string]any{}), nil
		}},
		NowMS: func() int64 { return 0 },
	}
	_ = newGitHubAppProviderWithDeps(config.GitHubAppSource{AppID: 1}, deps)
	if keychainCalls != 0 || httpCalls != 0 {
		t.Errorf("construction did I/O: keychain=%d http=%d", keychainCalls, httpCalls)
	}
}
