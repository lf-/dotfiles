//go:build linux

// Package userns implements an unprivileged execution gate using
// Linux user namespaces and pasta for network translation.
package userns

import (
	"fmt"
	"io"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"strconv"
	"strings"
	"syscall"
	"time"
)

const (
	innerEnv  = "__MATCHLOCK_USERNS_INNER"
	syncFDEnv = "__MATCHLOCK_USERNS_SYNC_FD"
)

// IsInner reports whether this process is running inside a userns fork.
func IsInner() bool {
	return os.Getenv(innerEnv) == "1"
}

// WaitForNetwork blocks until the parent process signals that pasta has
// configured the network namespace. Must be called when IsInner() is true.
func WaitForNetwork() error {
	fdStr := os.Getenv(syncFDEnv)
	if fdStr == "" {
		return nil
	}
	fd, err := strconv.Atoi(fdStr)
	if err != nil {
		return fmt.Errorf("userns: invalid sync fd %q: %w", fdStr, err)
	}
	f := os.NewFile(uintptr(fd), "userns-sync")
	defer f.Close()
	buf := make([]byte, 1)
	if _, err := f.Read(buf); err != nil && err != io.EOF {
		return fmt.Errorf("userns: waiting for network: %w", err)
	}
	return nil
}

// Enter forks the current process into a user+network namespace with pasta
// providing egress connectivity.
//
// When called from the outer (non-userns) process:
//   - For foreground (detach=false): forks child, starts pasta, forwards
//     stdio to child, waits for child to exit, kills pasta, and calls
//     os.Exit. Does not return.
//   - For detached (detach=true): forks child (with Setsid), starts pasta,
//     and returns (childPID, nil). The caller should poll the state DB for
//     the VM ID and then return — pasta auto-exits when the child's netns
//     is torn down.
//
// When called from the inner process (IsInner() == true):
//   - Calls WaitForNetwork() to block until pasta is ready, then returns (0, nil).
//   - The caller falls through to normal sandbox execution.
func Enter(detach bool, mtu int) (childPID int, retErr error) {
	if IsInner() {
		if err := WaitForNetwork(); err != nil {
			return 0, err
		}
		return 0, fixResolvConf()
	}

	if _, err := exec.LookPath("pasta"); err != nil {
		return 0, fmt.Errorf("userns: pasta not found on PATH (install the passt package): %w", err)
	}

	exePath, err := os.Executable()
	if err != nil {
		return 0, fmt.Errorf("userns: resolve executable: %w", err)
	}

	// Pipe for parent→child sync: parent writes after pasta is ready.
	syncR, syncW, err := os.Pipe()
	if err != nil {
		return 0, fmt.Errorf("userns: sync pipe: %w", err)
	}
	defer func() {
		if retErr != nil {
			syncR.Close()
			syncW.Close()
		}
	}()

	uid := os.Getuid()
	gid := os.Getgid()

	// Build child args: for detach, strip --detach and add --detach=false
	// --rm=false so the child process becomes the long-lived daemon.
	childArgs := buildChildArgs(detach)

	childEnv := append(os.Environ(),
		innerEnv+"=1",
		syncFDEnv+"=3", // syncR will be fd 3 (ExtraFiles[0])
	)

	child := exec.Command(exePath, childArgs...)
	child.Env = childEnv
	child.ExtraFiles = []*os.File{syncR} // → fd 3 in child
	child.SysProcAttr = &syscall.SysProcAttr{
		Cloneflags: syscall.CLONE_NEWUSER | syscall.CLONE_NEWNET | syscall.CLONE_NEWNS,
		UidMappings: []syscall.SysProcIDMap{
			{ContainerID: 0, HostID: uid, Size: 1},
		},
		GidMappings: []syscall.SysProcIDMap{
			{ContainerID: 0, HostID: gid, Size: 1},
		},
		GidMappingsEnableSetgroups: false,
		Setsid:                     detach,
	}

	if !detach {
		child.Stdin = os.Stdin
		child.Stdout = os.Stdout
		child.Stderr = os.Stderr
	}
	// For detach: leave Stdin/Stdout/Stderr nil (→ /dev/null).

	if err := child.Start(); err != nil {
		return 0, fmt.Errorf("userns: fork child: %w", err)
	}
	syncR.Close() // parent no longer needs the read end

	pid := child.Process.Pid

	// Start pasta in the foreground (-f) attached to the child's netns and
	// userns. pasta configures the namespace during startup and tears that
	// configuration back down when it exits, so it must live for the whole
	// session as a managed child that we kill once the workload finishes.
	pastaCmd := buildPastaCmd(pid, mtu)
	pastaCmd.Stdout = os.Stderr // pasta may log to stdout
	pastaCmd.Stderr = os.Stderr

	if err := pastaCmd.Start(); err != nil {
		child.Process.Kill()
		child.Wait()
		syncW.Close()
		return 0, fmt.Errorf("userns: start pasta: %w", err)
	}

	// Wait for pasta to finish configuring the child's netns. Readiness is
	// observed directly rather than signaled: pasta installs a default route as
	// the last step of setup, and we can see the child's route table through
	// /proc/<pid>/net/route from here.
	if err := waitForChildDefaultRoute(pastaCmd, pid, 10*time.Second); err != nil {
		child.Process.Kill()
		child.Wait()
		pastaCmd.Process.Kill()
		pastaCmd.Wait()
		syncW.Close()
		return 0, fmt.Errorf("userns: pasta network setup: %w", err)
	}

	// Signal child to proceed.
	syncW.Write([]byte{1})
	syncW.Close()

	if detach {
		// Outer detached: release child (it's a daemon) and return its PID.
		// Pasta auto-exits when the child's netns is destroyed.
		child.Process.Release()
		pastaCmd.Process.Release()
		return pid, nil
	}

	// Foreground: forward signals to child, wait for it, then kill pasta.
	exitCode := forwardAndWait(child, pastaCmd)
	os.Exit(exitCode)
	return 0, nil // unreachable
}

// buildChildArgs transforms os.Args[1:] for the child process.
// For detach mode, strips the --detach flag and adds --detach=false --rm=false
// (matching the existing detachedChildArgs logic) so the child acts as daemon.
// For foreground mode, the args are passed as-is; the inner marker env causes
// the userns gate to call WaitForNetwork() and return instead of re-forking.
func buildChildArgs(detach bool) []string {
	if !detach {
		return os.Args[1:]
	}

	args := os.Args[1:]
	splitAt := len(args)
	for i, a := range args {
		if a == "--" {
			splitAt = i
			break
		}
	}

	cliArgs := args[:splitAt]
	tail := args[splitAt:]

	out := make([]string, 0, len(cliArgs)+2+len(tail))
	out = append(out, cliArgs...)
	out = append(out, "--detach=false")
	out = append(out, "--rm=false")
	out = append(out, tail...)
	return out
}

// buildPastaCmd constructs the pasta command for the given child PID and MTU.
func buildPastaCmd(childPID, mtu int) *exec.Cmd {
	args := []string{
		"-f",      // foreground: stay alive as a managed child for the session
		"--quiet", // matchlock prints its own summary; suppress pasta's banner
		"--netns", fmt.Sprintf("/proc/%d/ns/net", childPID),
		"--userns", fmt.Sprintf("/proc/%d/ns/user", childPID),
		"--config-net",
	}
	if mtu > 0 {
		args = append(args, "--mtu", strconv.Itoa(mtu))
	}
	return exec.Command("pasta", args...)
}

// forwardAndWait forwards OS signals to the child, waits for it to exit,
// then terminates pasta and returns the child's exit code.
func forwardAndWait(child *exec.Cmd, pasta *exec.Cmd) int {
	sigCh := make(chan os.Signal, 4)
	signal.Notify(sigCh, syscall.SIGINT, syscall.SIGTERM, syscall.SIGHUP)

	fwdDone := make(chan struct{})
	go func() {
		defer close(fwdDone)
		for sig := range sigCh {
			child.Process.Signal(sig)
		}
	}()

	err := child.Wait()

	// Stop before closing: prevents send-on-closed-channel panic.
	signal.Stop(sigCh)
	close(sigCh)
	<-fwdDone

	// Pasta auto-exits when the child's netns is torn down, but kill it
	// explicitly for prompt cleanup.
	pasta.Process.Kill()
	pasta.Wait()

	if err == nil {
		return 0
	}
	if exitErr, ok := err.(*exec.ExitError); ok {
		return exitErr.ExitCode()
	}
	fmt.Fprintf(os.Stderr, "userns: child wait: %v\n", err)
	return 1
}

// waitForChildDefaultRoute polls the child's network namespace, via
// /proc/<pid>/net/route, until pasta has installed a default IPv4 route — the
// last step of pasta's --config-net setup and thus a reliable readiness
// signal. It fails fast if pasta exits before the route appears (e.g. bad
// flags) rather than waiting out the full timeout.
func waitForChildDefaultRoute(pastaCmd *exec.Cmd, childPID int, timeout time.Duration) error {
	routePath := fmt.Sprintf("/proc/%d/net/route", childPID)
	deadline := time.Now().Add(timeout)
	for time.Now().Before(deadline) {
		if defaultRoutePresent(routePath) {
			return nil
		}
		// Signal 0 probes liveness without reaping the process, so pasta's exit
		// status is still available to the caller's cleanup path.
		if err := pastaCmd.Process.Signal(syscall.Signal(0)); err != nil {
			return fmt.Errorf("pasta exited before configuring the network (see pasta output above)")
		}
		time.Sleep(20 * time.Millisecond)
	}
	return fmt.Errorf("timed out waiting for pasta to configure the network namespace")
}

// defaultRoutePresent checks a /proc/.../net/route table for a default route
// that is UP and has a gateway (RTF_UP=0x1, RTF_GATEWAY=0x2).
func defaultRoutePresent(routePath string) bool {
	data, err := os.ReadFile(routePath)
	if err != nil {
		return false
	}
	for line := range strings.SplitSeq(string(data), "\n") {
		fields := strings.Fields(line)
		if len(fields) < 8 {
			continue
		}
		if fields[1] != "00000000" || fields[7] != "00000000" {
			continue // not a default route
		}
		flags, err := strconv.ParseUint(fields[3], 16, 32)
		if err != nil {
			continue
		}
		if flags&0x3 == 0x3 { // RTF_UP | RTF_GATEWAY
			return true
		}
	}
	return false
}

// fixResolvConf bind-mounts a working /etc/resolv.conf inside the child's
// private mount namespace. This is necessary because the system resolv.conf
// typically points to 127.0.0.53 (systemd-resolved stub), which is a loopback
// address and unreachable inside a new network namespace.
//
// CLONE_NEWNS is required on the child so this mount stays private.
func fixResolvConf() error {
	// Make all mounts private so the bind mount below cannot propagate back
	// to the host's mount namespace.
	if err := syscall.Mount("", "/", "", syscall.MS_PRIVATE|syscall.MS_REC, ""); err != nil {
		fmt.Fprintf(os.Stderr, "userns: remount / private: %v (continuing)\n", err)
	}

	content := realNameservers()

	f, err := os.CreateTemp("", "matchlock-resolv-*.conf")
	if err != nil {
		return fmt.Errorf("userns: create temp resolv.conf: %w", err)
	}
	tmpPath := f.Name()
	if _, werr := f.WriteString(content); werr != nil {
		f.Close()
		os.Remove(tmpPath)
		return fmt.Errorf("userns: write temp resolv.conf: %w", werr)
	}
	f.Close()

	// Follow symlinks to find the actual inode; bind-mounting on a dangling
	// symlink silently does nothing.
	target, err := filepath.EvalSymlinks("/etc/resolv.conf")
	if err != nil {
		// resolv.conf absent or broken symlink — leave DNS as-is.
		os.Remove(tmpPath)
		return nil
	}

	if err := syscall.Mount(tmpPath, target, "", syscall.MS_BIND, ""); err != nil {
		fmt.Fprintf(os.Stderr, "userns: bind-mount resolv.conf onto %s: %v (continuing)\n", target, err)
	}
	// The bind mount holds an inode reference; removing the name is safe and
	// avoids /tmp litter if the process is killed.
	os.Remove(tmpPath)
	return nil
}

// realNameservers returns resolv.conf content using real (non-loopback)
// nameservers that are reachable through pasta's network translation.
func realNameservers() string {
	// /run/systemd/resolve/resolv.conf has real upstream servers on systems
	// where /etc/resolv.conf points to the 127.0.0.53 stub resolver.
	for _, path := range []string{
		"/run/systemd/resolve/resolv.conf",
		"/etc/resolv.conf",
	} {
		data, err := os.ReadFile(path)
		if err != nil {
			continue
		}
		var lines []string
		for line := range strings.SplitSeq(string(data), "\n") {
			fields := strings.Fields(line)
			if len(fields) >= 2 && fields[0] == "nameserver" {
				ip := fields[1]
				if !strings.HasPrefix(ip, "127.") && ip != "::1" {
					lines = append(lines, line)
				}
			}
		}
		if len(lines) > 0 {
			return strings.Join(lines, "\n") + "\n"
		}
	}
	// Fallback: well-known public resolvers; pasta proxies the UDP packets.
	return "nameserver 1.1.1.1\nnameserver 8.8.8.8\n"
}
