package api

import shellquote "github.com/kballard/go-shellquote"

// ShellQuoteArgs joins command arguments into a single shell-safe string
// using POSIX shell quoting rules.
func ShellQuoteArgs(args []string) string {
	return shellquote.Join(args...)
}
