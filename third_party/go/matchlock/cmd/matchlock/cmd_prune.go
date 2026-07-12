package main

import (
	"fmt"

	"github.com/spf13/cobra"

	"github.com/jingkaihe/matchlock/pkg/lifecycle"
)

var pruneCmd = &cobra.Command{
	Use:   "prune",
	Short: "Remove all stopped sandboxes",
	RunE:  runPrune,
}

func init() {
	rootCmd.AddCommand(pruneCmd)
}

func runPrune(cmd *cobra.Command, args []string) error {
	mgr := lifecycle.NewVMManager()
	pruned, err := mgr.Prune()
	for _, id := range pruned {
		fmt.Printf("Pruned %s\n", id)
	}
	fmt.Printf("Pruned %d VMs\n", len(pruned))
	if err != nil {
		return err
	}
	return nil
}
