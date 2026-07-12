package main

import (
	"errors"
	"fmt"
	"os"
	"strings"

	"github.com/spf13/cobra"
	"github.com/spf13/viper"

	"github.com/jingkaihe/matchlock/internal/logger"
	"github.com/jingkaihe/matchlock/pkg/version"
)

var rootCmd = &cobra.Command{
	Use:     "matchlock",
	Short:   "A lightweight micro-VM sandbox for running llm agent securely",
	Long:    "Matchlock is a lightweight micro-VM sandbox for running llm agent\nsecurely with network interception and secret protection.",
	Version: version.Version,

	PersistentPreRunE: configureRootLogging,
	SilenceUsage:      true,
	SilenceErrors:     true,
}

func init() {
	viper.SetEnvPrefix("MATCHLOCK")
	viper.AutomaticEnv()
	viper.SetEnvKeyReplacer(strings.NewReplacer("-", "_", ".", "_"))

	rootCmd.PersistentFlags().String("log-level", logger.DefaultLevel, "Log level (debug, info, warn, error)")
	viper.BindPFlag("log-level", rootCmd.PersistentFlags().Lookup("log-level"))
}

func configureRootLogging(cmd *cobra.Command, args []string) error {
	return logger.Configure(os.Stderr, viper.GetString("log-level"))
}

func main() {
	if err := rootCmd.Execute(); err != nil {
		var exitErr interface{ ExitCode() int }
		if errors.As(err, &exitErr) {
			os.Exit(exitErr.ExitCode())
		}
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
