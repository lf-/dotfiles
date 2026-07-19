package main

import (
	"context"
	"fmt"

	"github.com/spf13/cobra"
	"github.com/spf13/viper"

	"github.com/jingkaihe/matchlock/internal/errx"
	"github.com/jingkaihe/matchlock/pkg/api"
	"github.com/jingkaihe/matchlock/pkg/image"
	"github.com/jingkaihe/matchlock/pkg/rpc"
	"github.com/jingkaihe/matchlock/pkg/sandbox"
	"github.com/jingkaihe/matchlock/pkg/userns"
)

var rpcCmd = &cobra.Command{
	Use:   "rpc",
	Short: "Run in RPC mode (for programmatic access)",
	RunE:  runRPC,
}

func init() {
	rootCmd.AddCommand(rpcCmd)
}

func runRPC(cmd *cobra.Command, args []string) error {
	if viper.GetBool("userns") {
		// Enter a user+network namespace. For RPC mode there is no detach
		// and no MTU flag; use the network default MTU for pasta configuration.
		if _, err := userns.Enter(false, api.DefaultNetworkMTU); err != nil {
			return err
		}
		// If we're the outer foreground process, Enter calls os.Exit.
		// If we're the inner, WaitForNetwork has run; fall through.
	}

	ctx, cancel := contextWithSignal(context.Background())
	defer cancel()

	factory := func(ctx context.Context, config *api.Config) (rpc.VM, error) {
		if config.Image == "" {
			return nil, fmt.Errorf("image is required")
		}

		builder := image.NewBuilder(&image.BuildOptions{})

		result, err := builder.Build(ctx, config.Image)
		if err != nil {
			return nil, errx.Wrap(ErrBuildRootfs, err)
		}

		config.ImageCfg = mergeImageConfigFromOCI(config.ImageCfg, result.OCI)

		return sandbox.New(ctx, config, &sandbox.Options{
			RootfsPaths:   result.LowerPaths,
			RootfsFSTypes: result.LowerFSTypes,
		})
	}

	return rpc.RunRPC(ctx, factory)
}

func mergeImageConfigFromOCI(override *api.ImageConfig, oci *image.OCIConfig) *api.ImageConfig {
	var merged *api.ImageConfig
	if oci != nil {
		merged = &api.ImageConfig{
			User:       oci.User,
			WorkingDir: oci.WorkingDir,
			Entrypoint: append([]string(nil), oci.Entrypoint...),
			Cmd:        append([]string(nil), oci.Cmd...),
			Env:        copyEnvMap(oci.Env),
		}
	}
	if override == nil {
		return merged
	}
	if merged == nil {
		merged = &api.ImageConfig{}
	}
	if override.User != "" {
		merged.User = override.User
	}
	if override.WorkingDir != "" {
		merged.WorkingDir = override.WorkingDir
	}
	if override.Entrypoint != nil {
		merged.Entrypoint = append([]string(nil), override.Entrypoint...)
	}
	if override.Cmd != nil {
		merged.Cmd = append([]string(nil), override.Cmd...)
	}
	if override.Env != nil {
		merged.Env = copyEnvMap(override.Env)
	}
	return merged
}

func copyEnvMap(in map[string]string) map[string]string {
	if in == nil {
		return nil
	}
	out := make(map[string]string, len(in))
	for k, v := range in {
		out[k] = v
	}
	return out
}
