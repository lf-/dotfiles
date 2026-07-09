package runner

import (
	"strings"
	"testing"

	"jade.fyi/ghostjar/lid/internal/config"
)

func TestBakedTagDeterministicAndSensitive(t *testing.T) {
	p := &config.Profile{Image: "node:22", Setup: []string{"npm i -g x", "apt-get update"}}
	tag := BakedTag(p)
	if tag != BakedTag(p) {
		t.Fatalf("BakedTag not deterministic")
	}
	if !strings.HasPrefix(tag, "lid/") || !strings.HasSuffix(tag, ":latest") {
		t.Errorf("unexpected tag shape: %q", tag)
	}

	// Changing the base image changes the tag.
	p2 := &config.Profile{Image: "node:20", Setup: p.Setup}
	if BakedTag(p2) == tag {
		t.Errorf("tag should change with base image")
	}
	// Changing setup changes the tag.
	p3 := &config.Profile{Image: p.Image, Setup: []string{"npm i -g y"}}
	if BakedTag(p3) == tag {
		t.Errorf("tag should change with setup")
	}
}

func TestDockerfileRendering(t *testing.T) {
	p := &config.Profile{Image: "node:22-bookworm", Setup: []string{
		"npm install -g @anthropic-ai/claude-code",
		"apt-get install -y ripgrep",
	}}
	got := dockerfile(p)
	want := "FROM node:22-bookworm\n" +
		"RUN npm install -g @anthropic-ai/claude-code\n" +
		"RUN apt-get install -y ripgrep\n"
	if got != want {
		t.Errorf("dockerfile =\n%q\nwant\n%q", got, want)
	}
}

func TestBakeRequiresSetup(t *testing.T) {
	if _, err := Bake(t.Context(), &config.Profile{Name: "p", Image: "node:22"}, nil, BakeOptions{}); err == nil {
		t.Errorf("Bake should error when Setup is empty")
	}
}
