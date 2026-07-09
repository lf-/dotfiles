package runner

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"os/exec"
	"os/signal"
	"strings"
	"sync"
	"syscall"
	"time"

	"github.com/jingkaihe/matchlock/pkg/sdk"
	"golang.org/x/term"

	"jade.fyi/ghostjar/lid/internal/config"
)

// RunOptions configures a single sandbox run.
type RunOptions struct {
	Profile *config.Profile
	Cwd     string
	Command []string // full argv to run in the guest (profile.Command + extras)

	// Optional overrides; defaulted to the process std streams / real resolver.
	Stdin        *os.File
	Stdout       *os.File
	Stderr       io.Writer // diagnostic log sink (warnings)
	Resolver     *Resolver
	CloseTimeout time.Duration
}

// Run resolves secrets, boots a matchlock microVM for the profile, performs
// guest bootstrap, attaches interactively (or via pipes when stdin is not a
// TTY), and returns the guest command's exit code.
func Run(ctx context.Context, opts RunOptions) (int, error) {
	if opts.Stdin == nil {
		opts.Stdin = os.Stdin
	}
	if opts.Stdout == nil {
		opts.Stdout = os.Stdout
	}
	if opts.Stderr == nil {
		opts.Stderr = os.Stderr
	}
	if opts.Resolver == nil {
		opts.Resolver = NewResolver()
	}
	if opts.CloseTimeout == 0 {
		// The VM is disposable and Remove deletes its state right after, so a
		// long graceful-shutdown wait only delays exit (Close blocks for the
		// full timeout when the rpc process lingers).
		opts.CloseTimeout = 2 * time.Second
	}

	// Partition secrets: separate the at-most-one OAuth spec and any github_app
	// specs (both resolved lazily by providers, not via ResolveAll) from normal
	// secrets.
	var oauthSpec *config.SecretSpec
	var githubAppSpecs []config.SecretSpec
	var normalSpecs []config.SecretSpec
	for i := range opts.Profile.Secrets {
		s := &opts.Profile.Secrets[i]
		switch s.Source.Kind {
		case config.SourceAnthropicOAuth:
			if oauthSpec != nil {
				return 1, fmt.Errorf("profile %q has more than one claude_subscription secret; at most one is allowed", opts.Profile.Name)
			}
			oauthSpec = s
		case config.SourceGitHubApp:
			githubAppSpecs = append(githubAppSpecs, *s)
		default:
			normalSpecs = append(normalSpecs, *s)
		}
	}

	secrets, err := opts.Resolver.ResolveAll(ctx, normalSpecs)
	if err != nil {
		return 1, err
	}

	// Construct the OAuth provider if needed (reads host creds; may hit keychain).
	var oauthProvider *ClaudeOAuthProvider
	var oauthHosts []string
	if oauthSpec != nil {
		oauthProvider, err = NewClaudeOAuthProvider(ctx, oauthSpec.Source.Path, opts.Stderr)
		if err != nil {
			return 1, err
		}
		oauthHosts = oauthSpec.Hosts
	}

	// Construct a GitHub App provider per github_app secret. Providers do no I/O
	// at construction; credential resolution and token minting are deferred to
	// first use by the network hook. Each carries a lid-generated placeholder
	// that the guest's git tooling uses (the hook overwrites it with the real
	// rotating token in flight).
	var githubApps []GitHubAppInjection
	for i := range githubAppSpecs {
		s := &githubAppSpecs[i]
		if s.Source.GitHubApp == nil {
			return 1, fmt.Errorf("profile %q: github_app secret %q missing app config", opts.Profile.Name, s.Name)
		}
		placeholder, err := newPlaceholder(s.Name)
		if err != nil {
			return 1, err
		}
		githubApps = append(githubApps, GitHubAppInjection{
			Provider:    NewGitHubAppProvider(*s.Source.GitHubApp),
			Hosts:       s.Hosts,
			Placeholder: placeholder,
		})
	}

	// If the profile bakes an image (setup=[...]), use the baked tag when it
	// exists; otherwise fall back to the base image with a hint. A shallow copy
	// keeps the resolved image local to this run.
	prof := opts.Profile
	if len(prof.Setup) > 0 {
		effProfile := *prof
		effProfile.Image = effectiveImage(ctx, prof, opts.Stderr)
		prof = &effProfile
	}

	home, err := os.UserHomeDir()
	if err != nil {
		return 1, fmt.Errorf("resolve home dir: %w", err)
	}

	builder := Translate(prof, opts.Cwd, home, secrets, oauthProvider, oauthHosts, githubApps, guestUID, guestGID)

	client, err := sdk.NewClient(sdk.DefaultConfig())
	if err != nil {
		if isExecNotFound(err) {
			return 1, fmt.Errorf("matchlock binary not found: set $MATCHLOCK_BIN, build ~/co/matchlock, or `brew install jingkaihe/essentials/matchlock`: %w", err)
		}
		return 1, fmt.Errorf("start matchlock: %w", err)
	}
	defer func() {
		// Close then Remove: Close stops the VM, Remove deletes its state dir.
		_ = client.Close(opts.CloseTimeout)
		_ = client.Remove()
	}()

	if _, err := client.Launch(builder); err != nil {
		return 1, fmt.Errorf("launch sandbox: %w", err)
	}

	// Drop privileges: ensure a non-root user exists (claude's
	// --dangerously-skip-permissions refuses to run as root) and run the agent
	// command as it. This runs before the bootstraps so they can chown into the
	// resolved home.
	id, err := ensureGuestUser(ctx, client, opts.Stderr)
	if err != nil {
		return 1, err
	}

	// Seed host files into the guest (e.g. agent config in $HOME) before the
	// Claude bootstrap, so lid's auth stubs for the specific files it manages
	// (.claude.json, .claude/settings.json) stay authoritative while everything
	// else the user seeds survives.
	if err := seedGuestFiles(ctx, client, prof, id, opts.Cwd, home, opts.Stderr); err != nil {
		return 1, err
	}

	// Install a git credential helper answering with a MITM placeholder. Prefer
	// a normal GitCredential secret's placeholder; otherwise use a github_app
	// placeholder (whose real token the network hook injects per-request).
	gitCredPlaceholder := firstGitCredentialPlaceholder(secrets)
	if gitCredPlaceholder == "" && len(githubApps) > 0 {
		gitCredPlaceholder = githubApps[0].Placeholder
	}
	if err := bootstrapGitCredential(ctx, client, gitCredPlaceholder, id, opts.Stderr); err != nil {
		return 1, err
	}

	// Seed the App bot identity so commit authorship (not just push auth) is
	// attributed to the App. Best-effort and non-fatal.
	if len(githubApps) > 0 {
		seedGitHubAppIdentity(ctx, client, githubApps[0].Provider, id, opts.Stderr)
	}

	if oauthSpec != nil {
		if err := bootstrapClaudeOAuth(ctx, client, prof, id, opts.Stderr); err != nil {
			return 1, err
		}
	}

	workdir := ""
	if prof.MountCwd != config.MountOff {
		workdir = prof.Workspace
	}
	command := QuoteArgs(opts.Command)

	stdinFd := int(opts.Stdin.Fd())
	if term.IsTerminal(stdinFd) {
		return runInteractive(ctx, client, command, workdir, id.User, opts.Stdin, opts.Stdout, stdinFd)
	}

	// Non-interactive stdin (pipe): use pipe mode, no PTY. Run as the non-root
	// guest user, in the workspace dir (the pipe path historically ignored it).
	res, err := client.ExecPipeWithDirUser(ctx, command, workdir, id.User, opts.Stdin, opts.Stdout, opts.Stderr)
	if err != nil {
		return 1, fmt.Errorf("exec: %w", err)
	}
	return res.ExitCode, nil
}

func runInteractive(ctx context.Context, client *sdk.Client, command, workdir, user string, stdin, stdout *os.File, fd int) (int, error) {
	cols, rows, err := term.GetSize(fd) // x/term returns (width, height)
	if err != nil {
		rows, cols = 24, 80
	}

	oldState, err := term.MakeRaw(fd)
	if err != nil {
		return 1, fmt.Errorf("set raw mode: %w", err)
	}
	// Restore on all exit paths; the extra explicit Restore below runs before
	// we potentially print an error so the terminal is sane first.
	defer term.Restore(fd, oldState)

	resizeCh, stopResize := watchResize(fd)
	defer stopResize()

	res, err := client.ExecInteractive(ctx, command, &sdk.ExecInteractiveOptions{
		WorkingDir: workdir,
		User:       user,
		Rows:       uint16(rows),
		Cols:       uint16(cols),
		Stdin:      stdin,
		Stdout:     stdout,
		Resize:     resizeCh,
	})
	_ = term.Restore(fd, oldState)
	if err != nil {
		return 1, fmt.Errorf("interactive exec: %w", err)
	}
	return res.ExitCode, nil
}

// firstGitCredentialPlaceholder returns the placeholder of the first
// GitCredential secret, or "" if none.
func firstGitCredentialPlaceholder(secrets []Resolved) string {
	for _, s := range secrets {
		if s.GitCredential {
			return s.Placeholder
		}
	}
	return ""
}

// bootstrapGitCredential installs a guest git credential helper answering with
// the given MITM placeholder (never the real token); matchlock — or, for
// github_app, the network hook — swaps it for the real value in outbound HTTPS.
// A "" placeholder is a no-op.
func bootstrapGitCredential(ctx context.Context, client *sdk.Client, placeholder string, id guestIdentity, logw io.Writer) error {
	if placeholder == "" {
		return nil
	}

	script := gitCredentialScript(placeholder)
	if err := client.WriteFileMode(ctx, "/usr/local/bin/git-credential-lid", []byte(script), 0o755); err != nil {
		return fmt.Errorf("install git credential helper: %w", err)
	}

	// --system first (world-readable, so the non-root agent picks it up). If that
	// fails, fall back to a --global config in the guest user's own home (not
	// root's) and chown it. Missing git => nonzero exit; warn and continue.
	cmd := fmt.Sprintf("git config --system credential.helper lid || "+
		"{ HOME=%[1]s git config --global credential.helper lid && chown %[2]d:%[3]d %[1]s/.gitconfig; }",
		id.Home, id.UID, id.GID)
	res, err := client.Exec(ctx, cmd)
	if err != nil {
		fmt.Fprintf(logw, "lid: warning: could not configure git credential helper: %v\n", err)
		return nil
	}
	if res.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: git credential helper not configured (is git installed?)\n")
	}
	return nil
}

func gitCredentialScript(placeholder string) string {
	return "#!/bin/sh\n" +
		"# Installed by lid. Answers git credential queries with a MITM placeholder;\n" +
		"# matchlock replaces the placeholder with the real token in outbound HTTPS.\n" +
		"# The real token is never present inside this VM.\n" +
		"if [ \"$1\" = get ]; then\n" +
		"  echo username=x-access-token\n" +
		"  echo password=" + placeholder + "\n" +
		"fi\n"
}

// seedGitHubAppIdentity sets the guest git author identity to the App bot so
// commit authorship (not just push auth) is attributed to the App. Best-effort:
// any failure (network, missing git) is logged and swallowed — never fatal.
func seedGitHubAppIdentity(ctx context.Context, client *sdk.Client, provider *GitHubAppProvider, id guestIdentity, logw io.Writer) {
	slug, err := provider.appSlug(ctx)
	if err != nil {
		fmt.Fprintf(logw, "lid: warning: could not resolve github_app bot identity: %v\n", err)
		return
	}
	name := slug + "[bot]"
	// Prefer the canonical <id>+<slug>[bot]@users.noreply.github.com email; fall
	// back to a reasonable no-reply form if the bot user id is unavailable.
	email := name + "@users.noreply.github.com"
	if uid, err := provider.botUserID(ctx, slug); err == nil && uid != 0 {
		email = fmt.Sprintf("%d+%s@users.noreply.github.com", uid, name)
	}

	cmd := fmt.Sprintf(
		"HOME=%[1]s git config --global user.name %[2]s && "+
			"HOME=%[1]s git config --global user.email %[3]s && "+
			"chown %[4]d:%[5]d %[1]s/.gitconfig",
		id.Home, shellQuote(name), shellQuote(email), id.UID, id.GID)
	res, err := client.Exec(ctx, cmd)
	if err != nil {
		fmt.Fprintf(logw, "lid: warning: could not seed github_app git identity: %v\n", err)
		return
	}
	if res.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: seeding github_app git identity exited %d\n", res.ExitCode)
	}
}

// shellQuote wraps s in single quotes, escaping embedded single quotes, for safe
// interpolation into a /bin/sh command string.
func shellQuote(s string) string {
	return "'" + strings.ReplaceAll(s, "'", `'\''`) + "'"
}

// guestAPIKeyPlaceholder is the dummy API key embedded in guest Claude config.
// It never leaves the guest because the network hook strips X-Api-Key headers.
const guestAPIKeyPlaceholder = "sk-ant-api03-lid-guest-placeholder"

// bootstrapClaudeOAuth seeds the guest with Claude state files analogous to
// what the claude-danger Python reference does in prepare_guest_claude_home.
// Errors writing core state files are returned; non-critical ops only warn.
func bootstrapClaudeOAuth(ctx context.Context, client *sdk.Client, p *config.Profile, id guestIdentity, logw io.Writer) error {
	home := id.Home
	configDir := home + "/.claude"

	// Create .claude directory.
	res, err := client.Exec(ctx, "mkdir -p "+configDir+" && chmod 700 "+configDir)
	if err != nil {
		return fmt.Errorf("create .claude dir: %w", err)
	}
	if res.ExitCode != 0 {
		return fmt.Errorf("create .claude dir: exit code %d", res.ExitCode)
	}

	// Build state JSON (written to both .claude.json and .claude/.config.json).
	stateJSON := buildGuestClaudeStateJSON(p.Workspace)

	if err := client.WriteFileMode(ctx, home+"/.claude.json", []byte(stateJSON), 0o644); err != nil {
		return fmt.Errorf("write .claude.json: %w", err)
	}
	if err := client.WriteFileMode(ctx, configDir+"/.config.json", []byte(stateJSON), 0o644); err != nil {
		return fmt.Errorf("write .claude/.config.json: %w", err)
	}

	// Build settings JSON.
	settingsJSON := buildGuestClaudeSettingsJSON()
	if err := client.WriteFileMode(ctx, configDir+"/settings.json", []byte(settingsJSON), 0o644); err != nil {
		return fmt.Errorf("write .claude/settings.json: %w", err)
	}

	// Remove any credentials file so the guest doesn't try to use it.
	res, err = client.Exec(ctx, "rm -f "+configDir+"/.credentials.json")
	if err != nil {
		fmt.Fprintf(logw, "lid: warning: could not remove guest .credentials.json: %v\n", err)
	} else if res.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: rm .credentials.json exited %d\n", res.ExitCode)
	}

	// The state files were written by the root RPC; hand ownership to the
	// non-root agent so Claude (running as that user) can read and update them.
	chown := fmt.Sprintf("chown -R %d:%d %s %s/.claude.json", id.UID, id.GID, configDir, home)
	res, err = client.Exec(ctx, chown)
	if err != nil {
		fmt.Fprintf(logw, "lid: warning: could not chown guest Claude config: %v\n", err)
	} else if res.ExitCode != 0 {
		fmt.Fprintf(logw, "lid: warning: chown Claude config exited %d\n", res.ExitCode)
	}

	return nil
}

func buildGuestClaudeStateJSON(workspace string) string {
	// Last 20 chars of the placeholder, matching what the Python example uses.
	ph := guestAPIKeyPlaceholder
	if len(ph) > 20 {
		ph = ph[len(ph)-20:]
	}

	projectState := map[string]any{
		"allowedTools":                            []any{},
		"mcpContextUris":                          []any{},
		"mcpServers":                              map[string]any{},
		"enabledMcpjsonServers":                   []any{},
		"disabledMcpjsonServers":                  []any{},
		"exampleFiles":                            []any{},
		"hasTrustDialogAccepted":                  true,
		"hasCompletedProjectOnboarding":           true,
		"projectOnboardingSeenCount":              1,
		"hasClaudeMdExternalIncludesApproved":     false,
		"hasClaudeMdExternalIncludesWarningShown": false,
	}

	state := map[string]any{
		"numStartups":            1,
		"theme":                  "dark",
		"hasCompletedOnboarding": true,
		"lastOnboardingVersion":  "2.1.96",
		"customApiKeyResponses":  map[string]any{"approved": []string{ph}},
		"projects":               map[string]any{workspace: projectState},
	}

	data, _ := json.MarshalIndent(state, "", "  ")
	return string(data) + "\n"
}

func buildGuestClaudeSettingsJSON() string {
	settings := map[string]any{
		"apiKeyHelper":                      "printf %s " + guestAPIKeyPlaceholder,
		"skipDangerousModePermissionPrompt": true,
	}
	data, _ := json.MarshalIndent(settings, "", "  ")
	return string(data) + "\n"
}

func isExecNotFound(err error) bool {
	return errors.Is(err, exec.ErrNotFound) || errors.Is(err, os.ErrNotExist)
}

// watchResize forwards terminal size changes (SIGWINCH) as [rows, cols] pairs,
// matching what matchlock's ExecInteractive resize pump expects.
func watchResize(fd int) (<-chan [2]uint16, func()) {
	ch := make(chan [2]uint16, 1)
	winchCh := make(chan os.Signal, 1)
	stopCh := make(chan struct{})
	done := make(chan struct{})
	var once sync.Once

	signal.Notify(winchCh, syscall.SIGWINCH)
	go func() {
		defer close(done)
		defer close(ch)
		for {
			select {
			case <-stopCh:
				return
			case <-winchCh:
			}
			cols, rows, err := term.GetSize(fd)
			if err != nil {
				continue
			}
			select {
			case ch <- [2]uint16{uint16(rows), uint16(cols)}:
			case <-stopCh:
				return
			default:
			}
		}
	}()

	return ch, func() {
		once.Do(func() {
			signal.Stop(winchCh)
			close(stopCh)
			<-done
		})
	}
}
