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

	// Partition secrets: separate the at-most-one OAuth spec from normal secrets.
	var oauthSpec *config.SecretSpec
	var normalSpecs []config.SecretSpec
	for i := range opts.Profile.Secrets {
		s := &opts.Profile.Secrets[i]
		if s.Source.Kind == config.SourceAnthropicOAuth {
			if oauthSpec != nil {
				return 1, fmt.Errorf("profile %q has more than one claude_subscription secret; at most one is allowed", opts.Profile.Name)
			}
			oauthSpec = s
		} else {
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

	builder := Translate(opts.Profile, opts.Cwd, secrets, oauthProvider, oauthHosts)

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

	if err := bootstrapGitCredential(ctx, client, secrets, opts.Stderr); err != nil {
		return 1, err
	}

	if oauthSpec != nil {
		if err := bootstrapClaudeOAuth(ctx, client, opts.Profile, opts.Stderr); err != nil {
			return 1, err
		}
	}

	workdir := ""
	if opts.Profile.MountCwd != config.MountOff {
		workdir = opts.Profile.Workspace
	}
	command := QuoteArgs(opts.Command)

	stdinFd := int(opts.Stdin.Fd())
	if term.IsTerminal(stdinFd) {
		return runInteractive(ctx, client, command, workdir, opts.Stdin, opts.Stdout, stdinFd)
	}

	// Non-interactive stdin (pipe): use pipe mode, no PTY.
	res, err := client.ExecPipe(ctx, command, opts.Stdin, opts.Stdout, opts.Stderr)
	if err != nil {
		return 1, fmt.Errorf("exec: %w", err)
	}
	return res.ExitCode, nil
}

func runInteractive(ctx context.Context, client *sdk.Client, command, workdir string, stdin, stdout *os.File, fd int) (int, error) {
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

// bootstrapGitCredential installs a guest git credential helper for the first
// GitCredential secret. The helper answers with the MITM placeholder (never the
// real token); matchlock swaps it for the real value in outbound HTTPS.
func bootstrapGitCredential(ctx context.Context, client *sdk.Client, secrets []Resolved, logw io.Writer) error {
	var placeholder string
	found := false
	for _, s := range secrets {
		if s.GitCredential {
			placeholder = s.Placeholder
			found = true
			break
		}
	}
	if !found {
		return nil
	}

	script := gitCredentialScript(placeholder)
	if err := client.WriteFileMode(ctx, "/usr/local/bin/git-credential-lid", []byte(script), 0o755); err != nil {
		return fmt.Errorf("install git credential helper: %w", err)
	}

	// --system first (works when git is present and we can write there), else
	// fall back to --global. Missing git => nonzero exit; warn and continue.
	res, err := client.Exec(ctx, "git config --system credential.helper lid || git config --global credential.helper lid")
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

// guestAPIKeyPlaceholder is the dummy API key embedded in guest Claude config.
// It never leaves the guest because the network hook strips X-Api-Key headers.
const guestAPIKeyPlaceholder = "sk-ant-api03-lid-guest-placeholder"

// bootstrapClaudeOAuth seeds the guest with Claude state files analogous to
// what the claude-danger Python reference does in prepare_guest_claude_home.
// Errors writing core state files are returned; non-critical ops only warn.
func bootstrapClaudeOAuth(ctx context.Context, client *sdk.Client, p *config.Profile, logw io.Writer) error {
	home := "/root"
	if h, ok := p.Env["HOME"]; ok && h != "" {
		home = h
	}
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
