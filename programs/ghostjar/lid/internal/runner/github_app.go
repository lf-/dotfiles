package runner

import (
	"bytes"
	"context"
	"crypto"
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"encoding/pem"
	"fmt"
	"io"
	"net/http"
	"runtime"
	"strconv"
	"strings"
	"sync"
	"time"

	"jade.fyi/ghostjar/lid/internal/config"
)

const (
	// githubTokenRemintThresholdMS is how close to expiry (5 min) we re-mint the
	// installation token. Installation tokens are not renewable; "refresh" means
	// deriving a fresh one from the App key.
	githubTokenRemintThresholdMS = 5 * 60 * 1000
	// githubAppJWTLifetimeSeconds is the App JWT lifetime (must be <= 10 min).
	githubAppJWTLifetimeSeconds = 9 * 60
	githubAPIBase               = "https://api.github.com"
	githubAcceptHeader          = "application/vnd.github+json"
)

// keychainCredential resolves a config.SourceKeychain to its stored value on
// the host, per platform. It is injectable via CommandRunner for testing.
//
// This is used by GitHubAppProvider to read the App PEM; a keychain source only
// ever appears as a github_app private key, so it is not wired into ResolveAll.
func keychainCredential(ctx context.Context, run CommandRunner, src config.Source) (string, error) {
	if src.Kind != config.SourceKeychain {
		return "", fmt.Errorf("keychainCredential: source kind %q is not keychain", src.Kind)
	}
	if src.Service == "" {
		return "", fmt.Errorf("keychain source: service is empty")
	}
	argv := keychainArgv(runtime.GOOS, src.Service, src.Account)
	if argv == nil {
		return "", fmt.Errorf("keychain source: unsupported platform %q", runtime.GOOS)
	}
	out, err := run(ctx, argv)
	if err != nil {
		return "", fmt.Errorf("keychain lookup for service %q: %w", src.Service, err)
	}
	v := strings.TrimRight(out, "\r\n")
	if v == "" {
		return "", fmt.Errorf("keychain lookup for service %q produced no value", src.Service)
	}
	return v, nil
}

// keychainArgv builds the per-GOOS credential-store lookup argv. Returns nil on
// an unsupported platform.
func keychainArgv(goos, service, account string) []string {
	switch goos {
	case "darwin":
		argv := []string{"security", "find-generic-password", "-w", "-s", service}
		if account != "" {
			argv = append(argv, "-a", account)
		}
		return argv
	case "linux":
		argv := []string{"secret-tool", "lookup", "service", service}
		if account != "" {
			argv = append(argv, "account", account)
		}
		return argv
	default:
		return nil
	}
}

// GitHubAppInjection pairs a GitHubAppProvider with the guest wiring needed to
// install its per-request Authorization-rewriting network hook. One is built
// per github_app secret and threaded into Translate.
type GitHubAppInjection struct {
	Provider    *GitHubAppProvider
	Hosts       []string // hosts the injection hook intercepts
	Placeholder string   // mirrored into guest GH_TOKEN/GITHUB_TOKEN
}

// GitHubAppDeps holds injectable dependencies for GitHubAppProvider. In
// production, use NewGitHubAppProvider (which wires real deps).
type GitHubAppDeps struct {
	// Run executes a host command (used for keychain access to read the PEM).
	Run CommandRunner
	// HTTPDoer performs HTTP requests against the GitHub API.
	HTTPDoer HTTPDoer
	// NowMS returns the current time in milliseconds since epoch.
	NowMS func() int64
}

func defaultGitHubAppDeps() GitHubAppDeps {
	return GitHubAppDeps{
		Run:      execCommand,
		HTTPDoer: http.DefaultClient,
		NowMS:    func() int64 { return time.Now().UnixMilli() },
	}
}

// githubToken is a minted installation token with its expiry.
type githubToken struct {
	token       string
	expiresAtMS int64
}

// GitHubAppProvider mints and caches short-lived GitHub App installation access
// tokens on the host, re-minting when near expiry. Credential resolution is
// lazy: neither the keychain nor the network is touched at construction. The
// PEM is read on first Token() call and cached; each installation token is
// derived fresh from the App key (nothing to persist).
type GitHubAppProvider struct {
	mu   sync.Mutex
	src  config.GitHubAppSource
	deps GitHubAppDeps

	pem   []byte      // cached PEM, read from the credential source on first use
	tok   githubToken // cached installation token
	instl int64       // resolved installation id (0 until discovered/known)
}

// NewGitHubAppProvider creates a provider wired to real OS/network deps. It does
// no I/O: credential resolution is deferred to the first Token call.
func NewGitHubAppProvider(src config.GitHubAppSource) *GitHubAppProvider {
	return newGitHubAppProviderWithDeps(src, defaultGitHubAppDeps())
}

func newGitHubAppProviderWithDeps(src config.GitHubAppSource, deps GitHubAppDeps) *GitHubAppProvider {
	return &GitHubAppProvider{
		src:   src,
		deps:  deps,
		instl: src.InstallationID,
	}
}

// Token returns a valid installation access token, minting on first use and
// re-minting when within ~5 minutes of expiry. Safe for concurrent use.
func (p *GitHubAppProvider) Token(ctx context.Context) (string, error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	nowMS := p.deps.NowMS()
	if p.tok.token != "" && p.tok.expiresAtMS > nowMS+githubTokenRemintThresholdMS {
		return p.tok.token, nil
	}
	tok, err := p.mint(ctx)
	if err != nil {
		return "", fmt.Errorf("github_app: mint installation token: %w", err)
	}
	p.tok = tok
	return p.tok.token, nil
}

// loadPEM reads and caches the App private key from its credential source.
// Caller holds p.mu.
func (p *GitHubAppProvider) loadPEM(ctx context.Context) ([]byte, error) {
	if p.pem != nil {
		return p.pem, nil
	}
	pemStr, err := keychainCredential(ctx, p.deps.Run, p.src.PrivateKey)
	if err != nil {
		return nil, fmt.Errorf("read private key: %w", err)
	}
	p.pem = []byte(pemStr)
	return p.pem, nil
}

// mint performs the full JWT + (discover) + access-token flow. Caller holds p.mu.
func (p *GitHubAppProvider) mint(ctx context.Context) (githubToken, error) {
	pemBytes, err := p.loadPEM(ctx)
	if err != nil {
		return githubToken{}, err
	}
	key, err := parseRSAPrivateKey(pemBytes)
	if err != nil {
		return githubToken{}, err
	}
	jwt, err := buildAppJWT(p.src.AppID, key, p.deps.NowMS()/1000, githubAppJWTLifetimeSeconds)
	if err != nil {
		return githubToken{}, err
	}

	instID := p.instl
	if instID == 0 {
		instID, err = p.discoverInstallation(ctx, jwt)
		if err != nil {
			return githubToken{}, err
		}
		p.instl = instID
	}

	return p.requestInstallationToken(ctx, jwt, instID)
}

// discoverInstallation resolves the installation id from the first configured
// repository via GET /repos/{owner}/{repo}/installation.
func (p *GitHubAppProvider) discoverInstallation(ctx context.Context, jwt string) (int64, error) {
	if len(p.src.Repositories) == 0 {
		return 0, fmt.Errorf("cannot auto-discover installation: no repositories configured")
	}
	slug := p.src.Repositories[0]
	url := fmt.Sprintf("%s/repos/%s/installation", githubAPIBase, slug)
	var out struct {
		ID int64 `json:"id"`
	}
	if err := p.doGitHubJSON(ctx, http.MethodGet, url, jwt, nil, &out); err != nil {
		return 0, fmt.Errorf("discover installation for %q: %w", slug, err)
	}
	if out.ID == 0 {
		return 0, fmt.Errorf("discover installation for %q: response missing id", slug)
	}
	return out.ID, nil
}

// requestInstallationToken POSTs to mint a downscoped installation token.
func (p *GitHubAppProvider) requestInstallationToken(ctx context.Context, jwt string, instID int64) (githubToken, error) {
	url := fmt.Sprintf("%s/app/installations/%d/access_tokens", githubAPIBase, instID)

	body := map[string]any{}
	if names := repoNames(p.src.Repositories); len(names) > 0 {
		body["repositories"] = names
	}
	if len(p.src.Permissions) > 0 {
		body["permissions"] = p.src.Permissions
	}

	var out struct {
		Token     string `json:"token"`
		ExpiresAt string `json:"expires_at"`
	}
	if err := p.doGitHubJSON(ctx, http.MethodPost, url, jwt, body, &out); err != nil {
		return githubToken{}, err
	}
	if out.Token == "" {
		return githubToken{}, fmt.Errorf("access_tokens response missing token")
	}
	expMS := p.deps.NowMS() + 60*60*1000 // conservative default if parse fails
	if out.ExpiresAt != "" {
		if t, err := time.Parse(time.RFC3339, out.ExpiresAt); err == nil {
			expMS = t.UnixMilli()
		}
	}
	return githubToken{token: out.Token, expiresAtMS: expMS}, nil
}

// appSlug fetches the App's slug via GET /app (best-effort, for bot identity).
func (p *GitHubAppProvider) appSlug(ctx context.Context) (string, error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	pemBytes, err := p.loadPEM(ctx)
	if err != nil {
		return "", err
	}
	key, err := parseRSAPrivateKey(pemBytes)
	if err != nil {
		return "", err
	}
	jwt, err := buildAppJWT(p.src.AppID, key, p.deps.NowMS()/1000, githubAppJWTLifetimeSeconds)
	if err != nil {
		return "", err
	}
	var out struct {
		Slug string `json:"slug"`
	}
	if err := p.doGitHubJSON(ctx, http.MethodGet, githubAPIBase+"/app", jwt, nil, &out); err != nil {
		return "", err
	}
	if out.Slug == "" {
		return "", fmt.Errorf("GET /app: response missing slug")
	}
	return out.Slug, nil
}

// botUserID fetches the bot user id via GET /users/<slug>[bot] (best-effort).
func (p *GitHubAppProvider) botUserID(ctx context.Context, slug string) (int64, error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	pemBytes, err := p.loadPEM(ctx)
	if err != nil {
		return 0, err
	}
	key, err := parseRSAPrivateKey(pemBytes)
	if err != nil {
		return 0, err
	}
	jwt, err := buildAppJWT(p.src.AppID, key, p.deps.NowMS()/1000, githubAppJWTLifetimeSeconds)
	if err != nil {
		return 0, err
	}
	url := fmt.Sprintf("%s/users/%s%%5Bbot%%5D", githubAPIBase, slug)
	var out struct {
		ID int64 `json:"id"`
	}
	if err := p.doGitHubJSON(ctx, http.MethodGet, url, jwt, nil, &out); err != nil {
		return 0, err
	}
	return out.ID, nil
}

// doGitHubJSON performs an authenticated (Bearer <jwt>) GitHub API request,
// optionally with a JSON body, and decodes the JSON response into out.
func (p *GitHubAppProvider) doGitHubJSON(ctx context.Context, method, url, jwt string, reqBody any, out any) error {
	var bodyReader io.Reader
	if reqBody != nil {
		data, err := json.Marshal(reqBody)
		if err != nil {
			return err
		}
		bodyReader = bytes.NewReader(data)
	}
	req, err := http.NewRequestWithContext(ctx, method, url, bodyReader)
	if err != nil {
		return err
	}
	req.Header.Set("Authorization", "Bearer "+jwt)
	req.Header.Set("Accept", githubAcceptHeader)
	if reqBody != nil {
		req.Header.Set("Content-Type", "application/json")
	}

	resp, err := p.deps.HTTPDoer.Do(req)
	if err != nil {
		return fmt.Errorf("HTTP request: %w", err)
	}
	defer resp.Body.Close()
	respBody, err := io.ReadAll(resp.Body)
	if err != nil {
		return fmt.Errorf("read response: %w", err)
	}
	if resp.StatusCode < 200 || resp.StatusCode >= 300 {
		return fmt.Errorf("HTTP %d: %s", resp.StatusCode, strings.TrimSpace(string(respBody)))
	}
	if out != nil {
		if err := json.Unmarshal(respBody, out); err != nil {
			return fmt.Errorf("parse response: %w", err)
		}
	}
	return nil
}

// repoNames derives short repository names (without owner) from "owner/repo"
// slugs. GitHub's access_tokens endpoint wants short names.
func repoNames(slugs []string) []string {
	if len(slugs) == 0 {
		return nil
	}
	out := make([]string, 0, len(slugs))
	for _, s := range slugs {
		if i := strings.LastIndex(s, "/"); i >= 0 && i+1 < len(s) {
			out = append(out, s[i+1:])
		} else {
			out = append(out, s)
		}
	}
	return out
}

// parseRSAPrivateKey parses a PKCS1 or PKCS8 PEM-encoded RSA private key.
func parseRSAPrivateKey(pemBytes []byte) (*rsa.PrivateKey, error) {
	block, _ := pem.Decode(pemBytes)
	if block == nil {
		return nil, fmt.Errorf("private key: no PEM block found")
	}
	if key, err := x509.ParsePKCS1PrivateKey(block.Bytes); err == nil {
		return key, nil
	}
	keyAny, err := x509.ParsePKCS8PrivateKey(block.Bytes)
	if err != nil {
		return nil, fmt.Errorf("private key: parse PKCS1/PKCS8: %w", err)
	}
	key, ok := keyAny.(*rsa.PrivateKey)
	if !ok {
		return nil, fmt.Errorf("private key: not an RSA key (%T)", keyAny)
	}
	return key, nil
}

// buildAppJWT builds a signed RS256 GitHub App JWT with iss=appID, iat=iatSec,
// exp=iatSec+lifetimeSec.
func buildAppJWT(appID int64, key *rsa.PrivateKey, iatSec, lifetimeSec int64) (string, error) {
	header := map[string]any{"alg": "RS256", "typ": "JWT"}
	claims := map[string]any{
		"iss": strconv.FormatInt(appID, 10),
		"iat": iatSec,
		"exp": iatSec + lifetimeSec,
	}
	headerJSON, err := json.Marshal(header)
	if err != nil {
		return "", err
	}
	claimsJSON, err := json.Marshal(claims)
	if err != nil {
		return "", err
	}
	signingInput := b64url(headerJSON) + "." + b64url(claimsJSON)

	h := crypto.SHA256.New()
	h.Write([]byte(signingInput))
	sig, err := rsa.SignPKCS1v15(rand.Reader, key, crypto.SHA256, h.Sum(nil))
	if err != nil {
		return "", fmt.Errorf("sign JWT: %w", err)
	}
	return signingInput + "." + b64url(sig), nil
}

func b64url(b []byte) string {
	return base64.RawURLEncoding.EncodeToString(b)
}

// githubAuthHeader chooses the outbound Authorization header shape for a GitHub
// request. git-smart-HTTP requests (info/refs, upload-pack, receive-pack) use
// HTTP Basic with the x-access-token username; REST/GraphQL use "token <token>".
// This is a pure function so it can be table-tested.
func githubAuthHeader(path, token string) string {
	if isGitSmartHTTPPath(path) {
		basic := base64.StdEncoding.EncodeToString([]byte("x-access-token:" + token))
		return "Basic " + basic
	}
	return "token " + token
}

func isGitSmartHTTPPath(path string) bool {
	return strings.Contains(path, "/info/refs") ||
		strings.Contains(path, "/git-upload-pack") ||
		strings.Contains(path, "/git-receive-pack")
}
