// Command lid runs coding agents inside matchlock microVMs with a network
// allowlist and host-side secret injection. See DESIGN.md and SPEC.md.
package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"os/signal"
	"slices"
	"strings"
	"syscall"

	"jade.fyi/ghostjar/lid/internal/config"
	"jade.fyi/ghostjar/lid/internal/runner"
)

func main() {
	os.Exit(run(os.Args[1:]))
}

// globalOpts holds flags that apply to every subcommand.
type globalOpts struct {
	configPath string
}

func run(args []string) int {
	fs := flag.NewFlagSet("lid", flag.ContinueOnError)
	fs.SetOutput(os.Stderr)
	var g globalOpts
	var chdir string
	fs.StringVar(&g.configPath, "config", "", "path to project lid.star (overrides discovery)")
	fs.StringVar(&chdir, "C", "", "change to this directory before running")
	fs.Usage = func() { usage(fs) }

	if err := fs.Parse(args); err != nil {
		if err == flag.ErrHelp {
			return 0
		}
		return 2
	}

	if chdir != "" {
		if err := os.Chdir(chdir); err != nil {
			fmt.Fprintf(os.Stderr, "lid: %v\n", err)
			return 1
		}
	}

	rest := fs.Args()
	if len(rest) == 0 {
		usage(fs)
		return 2
	}

	sub, subArgs := rest[0], rest[1:]
	switch sub {
	case "run":
		return cmdRun(g, subArgs)
	case "shell":
		return cmdShell(g, subArgs)
	case "ls":
		return cmdLs(g)
	case "check":
		return cmdCheck(g)
	case "help", "-h", "--help":
		usage(fs)
		return 0
	default:
		fmt.Fprintf(os.Stderr, "lid: unknown subcommand %q\n", sub)
		usage(fs)
		return 2
	}
}

func usage(fs *flag.FlagSet) {
	out := fs.Output()
	fmt.Fprint(out, `lid — run agents inside matchlock microVMs

Usage:
  lid [--config PATH] [-C DIR] <command> [args]

Commands:
  run [profile] [-- extra args]   boot a VM and run the profile command
  shell [profile]                 boot a VM and open /bin/sh
  ls                              list profiles from the merged config
  check                           evaluate configs; nonzero exit on error

Global flags:
`)
	fs.PrintDefaults()
}

func discover(g globalOpts) (*runner.Discovery, error) {
	cwd, err := os.Getwd()
	if err != nil {
		return nil, err
	}
	return runner.Discover(cwd, runner.DiscoverOptions{ConfigOverride: g.configPath})
}

func cmdRun(g globalOpts, args []string) int {
	profile, extra := parseProfileAndExtra(args)
	return launch(g, profile, nil, extra)
}

func cmdShell(g globalOpts, args []string) int {
	profile, _ := parseProfileAndExtra(args)
	return launch(g, profile, []string{"/bin/sh"}, nil)
}

// parseProfileAndExtra splits "[profile] [-- extra...]": the first token before
// a "--" is the profile name (may be empty); tokens after "--" are extras.
func parseProfileAndExtra(args []string) (profile string, extra []string) {
	before := args
	if i := slices.Index(args, "--"); i >= 0 {
		before = args[:i]
		extra = args[i+1:]
	}
	if len(before) > 0 {
		profile = before[0]
	}
	return profile, extra
}

func launch(g globalOpts, profileName string, overrideCmd, extra []string) int {
	disc, err := discover(g)
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		return 1
	}
	prof, err := disc.Merged.Lookup(profileName)
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		return 1
	}

	command := overrideCmd
	if command == nil {
		command = slices.Clone(prof.Command)
	} else {
		command = slices.Clone(command)
	}
	command = append(command, extra...)

	cwd, err := os.Getwd()
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		return 1
	}

	ctx, stop := signal.NotifyContext(context.Background(), syscall.SIGINT, syscall.SIGTERM)
	defer stop()

	exit, err := runner.Run(ctx, runner.RunOptions{
		Profile: prof,
		Cwd:     cwd,
		Command: command,
	})
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		if exit == 0 {
			exit = 1
		}
	}
	return exit
}

func cmdLs(g globalOpts) int {
	disc, err := discover(g)
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		return 1
	}
	printSources(disc)
	for _, p := range disc.Merged.Profiles {
		fmt.Println(p.Name)
		fmt.Printf("  image:   %s\n", p.Image)
		fmt.Printf("  network: %s\n", networkSummary(p))
		if names := secretNames(p); len(names) > 0 {
			fmt.Printf("  secrets: %s\n", strings.Join(names, ", "))
		}
	}
	return 0
}

func cmdCheck(g globalOpts) int {
	disc, err := discover(g)
	if err != nil {
		fmt.Fprintf(os.Stderr, "lid: %v\n", err)
		return 1
	}
	printSources(disc)
	for _, p := range disc.Merged.Profiles {
		fmt.Printf("ok: %s (%s, %s)\n", p.Name, p.Image, networkSummary(p))
	}
	fmt.Printf("%d profile(s) OK\n", len(disc.Merged.Profiles))
	return 0
}

func printSources(d *runner.Discovery) {
	if d.GlobalPath != "" {
		fmt.Printf("# global:  %s\n", d.GlobalPath)
	}
	if d.ProjectPath != "" {
		fmt.Printf("# project: %s\n", d.ProjectPath)
	}
}

func networkSummary(p *config.Profile) string {
	switch {
	case p.Net.NoNetwork:
		return "no network"
	case p.Net.AllowAll:
		return "allow-all"
	default:
		n := len(p.Net.AllowedHosts)
		if n == 1 {
			return "1 host"
		}
		return fmt.Sprintf("%d hosts", n)
	}
}

func secretNames(p *config.Profile) []string {
	names := make([]string, 0, len(p.Secrets))
	for _, s := range p.Secrets {
		names = append(names, s.Name)
	}
	return names
}
