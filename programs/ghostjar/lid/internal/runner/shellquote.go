package runner

import "strings"

// QuoteArgs joins argv into a single POSIX shell command string, quoting each
// argument so that a POSIX /bin/sh reconstructs the exact argv. matchlock's
// exec RPC takes a command string, so lid must do the quoting itself. This
// mirrors the intent of matchlock's api.ShellQuoteArgs (which uses
// github.com/kballard/go-shellquote, a dep lid does not carry) without pulling
// in that module.
func QuoteArgs(args []string) string {
	quoted := make([]string, len(args))
	for i, a := range args {
		quoted[i] = quoteArg(a)
	}
	return strings.Join(quoted, " ")
}

// shellSafe is the set of characters that never need quoting in a POSIX shell
// word. It is intentionally conservative.
const shellSafe = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789" +
	"_-./:=@%+,"

func quoteArg(s string) string {
	if s == "" {
		return "''"
	}
	for _, r := range s {
		if !strings.ContainsRune(shellSafe, r) {
			// Wrap in single quotes and escape any embedded single quote as
			// the classic '\'' sequence (close quote, escaped quote, reopen).
			return "'" + strings.ReplaceAll(s, "'", `'\''`) + "'"
		}
	}
	return s
}
