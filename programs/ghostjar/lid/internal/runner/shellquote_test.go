package runner

import "testing"

func TestQuoteArg(t *testing.T) {
	cases := []struct {
		in, want string
	}{
		{"", "''"},
		{"claude", "claude"},
		{"/bin/sh", "/bin/sh"},
		{"a-b_c.d", "a-b_c.d"},
		{"--flag=value", "--flag=value"},
		{"hello world", "'hello world'"},
		{"it's", `'it'\''s'`},
		{"$HOME", "'$HOME'"},
		{"a\"b", `'a"b'`},
		{"a;rm -rf /", "'a;rm -rf /'"},
		{"back`tick`", "'back`tick`'"},
	}
	for _, c := range cases {
		if got := quoteArg(c.in); got != c.want {
			t.Errorf("quoteArg(%q) = %q, want %q", c.in, got, c.want)
		}
	}
}

func TestQuoteArgs(t *testing.T) {
	got := QuoteArgs([]string{"claude", "--dangerously", "hello world"})
	want := "claude --dangerously 'hello world'"
	if got != want {
		t.Errorf("QuoteArgs = %q, want %q", got, want)
	}
	if QuoteArgs(nil) != "" {
		t.Errorf("QuoteArgs(nil) = %q, want empty", QuoteArgs(nil))
	}
}
