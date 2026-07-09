package runner

import (
	"strings"
	"testing"
)

func TestParseGuestHome(t *testing.T) {
	cases := []struct {
		name   string
		stdout string
		want   string
	}{
		{"reuse node", "some setup noise\nLID_GUEST_HOME=/home/node\n", "/home/node"},
		{"created", "LID_GUEST_HOME=/home/lid\n", "/home/lid"},
		{"trailing space", "LID_GUEST_HOME=/home/lid   \n", "/home/lid"},
		{"missing", "no marker here\n", ""},
		{"empty", "", ""},
		{"last wins is fine; only marker matters", "LID_GUEST_HOME=/home/x\nunrelated\n", "/home/x"},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := parseGuestHome(tc.stdout); got != tc.want {
				t.Errorf("parseGuestHome(%q) = %q, want %q", tc.stdout, got, tc.want)
			}
		})
	}
}

func TestGuestUserScriptContents(t *testing.T) {
	s := guestUserScript()
	// Must print the home marker so the runner can read the resolved home back.
	if !strings.Contains(s, homeMarker) {
		t.Errorf("script missing home marker %q", homeMarker)
	}
	// Reuse path: detect an existing uid-1000 user before creating one.
	if !strings.Contains(s, "getent passwd") || !strings.Contains(s, "/etc/passwd") {
		t.Errorf("script should detect an existing uid-1000 user")
	}
	// Create path must cover useradd, adduser, and a raw passwd-append fallback.
	for _, want := range []string{"useradd", "adduser", ">> /etc/passwd", ">> /etc/group"} {
		if !strings.Contains(s, want) {
			t.Errorf("script missing create-path fragment %q", want)
		}
	}
	// Best-effort passwordless sudo keyed by uid.
	if !strings.Contains(s, "sudoers.d/lid") || !strings.Contains(s, "NOPASSWD:ALL") {
		t.Errorf("script should set up passwordless sudo")
	}
	// The uid/gid must match the constants the mount ownership uses.
	if !strings.Contains(s, "uid=1000") || !strings.Contains(s, "gid=1000") {
		t.Errorf("script uid/gid should be %d/%d", guestUID, guestGID)
	}
}
