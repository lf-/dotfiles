package runner

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/jingkaihe/matchlock/pkg/sdk"

	"jade.fyi/ghostjar/lid/internal/config"
)

// matchlockBin returns the matchlock binary path lid shells out to for image
// operations, mirroring the SDK's own resolution ($MATCHLOCK_BIN else PATH).
func matchlockBin() string {
	return sdk.DefaultConfig().BinaryPath
}

// BakedTag is the deterministic local image tag for a profile's baked image,
// derived from the base image and setup commands so identical inputs reuse the
// same tag. Pure.
func BakedTag(p *config.Profile) string {
	sum := sha256.Sum256([]byte(p.Image + "\n" + strings.Join(p.Setup, "\n")))
	return "lid/" + hex.EncodeToString(sum[:])[:12] + ":latest"
}

// dockerfile renders the profile's base image + setup commands into a Dockerfile.
func dockerfile(p *config.Profile) string {
	var b strings.Builder
	fmt.Fprintf(&b, "FROM %s\n", p.Image)
	mounts := ""
	for _, dir := range p.BakeCaches {
		mounts += fmt.Sprintf(" --mount=type=cache,target=%s", dir)
	}
	for _, cmd := range p.Setup {
		fmt.Fprintf(&b, "RUN%s %s\n", mounts, cmd)
	}
	return b.String()
}

// BakeOptions configures a Bake call.
type BakeOptions struct {
	// CacheSizeMB is passed to matchlock build --build-cache-size. Zero uses
	// matchlock's default (10 GiB).
	CacheSizeMB int
}

// Bake builds the profile's baked image (base image + setup steps) into the
// local matchlock image store under BakedTag(p), via `matchlock build`. Returns
// the tag. Requires a non-empty Setup.
func Bake(ctx context.Context, p *config.Profile, logw io.Writer, opts BakeOptions) (string, error) {
	if len(p.Setup) == 0 {
		return "", fmt.Errorf("profile %q has no setup steps to bake", p.Name)
	}
	tag := BakedTag(p)

	ctxDir, err := os.MkdirTemp("", "lid-bake-")
	if err != nil {
		return "", fmt.Errorf("bake: temp dir: %w", err)
	}
	defer os.RemoveAll(ctxDir)

	dfPath := filepath.Join(ctxDir, "Dockerfile")
	if err := os.WriteFile(dfPath, []byte(dockerfile(p)), 0o644); err != nil {
		return "", fmt.Errorf("bake: write Dockerfile: %w", err)
	}

	argv := []string{"build", "-t", tag, "-f", dfPath}
	if opts.CacheSizeMB > 0 {
		argv = append(argv, "--build-cache-size", fmt.Sprintf("%d", opts.CacheSizeMB))
	}
	argv = append(argv, ctxDir)

	cmd := exec.CommandContext(ctx, matchlockBin(), argv...)
	cmd.Stdout = logw
	cmd.Stderr = logw
	if err := cmd.Run(); err != nil {
		return "", fmt.Errorf("bake: matchlock build: %w", err)
	}
	return tag, nil
}

// bakedImageExists reports whether tag is present in the matchlock image store,
// by scanning the first column of `matchlock image ls`.
func bakedImageExists(ctx context.Context, tag string) (bool, error) {
	out, err := exec.CommandContext(ctx, matchlockBin(), "image", "ls").Output()
	if err != nil {
		return false, err
	}
	for _, line := range strings.Split(string(out), "\n") {
		fields := strings.Fields(line)
		if len(fields) > 0 && fields[0] == tag {
			return true, nil
		}
	}
	return false, nil
}

// effectiveImage returns the image lid should launch for a profile with setup
// steps: the baked tag if it exists, else the base image (with a hint to bake).
func effectiveImage(ctx context.Context, p *config.Profile, logw io.Writer) string {
	tag := BakedTag(p)
	ok, err := bakedImageExists(ctx, tag)
	if err == nil && ok {
		return tag
	}
	fmt.Fprintf(logw, "lid: image not baked; run `lid bake %s` to avoid rebuilding at runtime; using base image %s\n", p.Name, p.Image)
	return p.Image
}
