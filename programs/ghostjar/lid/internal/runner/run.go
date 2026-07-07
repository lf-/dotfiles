package runner

import (
	"context"
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
		opts.CloseTimeout = 10 * time.Second
	}

	secrets, err := opts.Resolver.ResolveAll(ctx, opts.Profile.Secrets)
	if err != nil {
		return 1, err
	}

	builder := Translate(opts.Profile, opts.Cwd, secrets)

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
