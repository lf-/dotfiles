package main

import (
	"encoding/json"
	"fmt"

	"github.com/spf13/cobra"

	"github.com/jingkaihe/matchlock/pkg/lifecycle"
	"github.com/jingkaihe/matchlock/pkg/state"
)

type inspectOutput struct {
	VM        state.VMState      `json:"vm"`
	Lifecycle lifecycle.Record   `json:"lifecycle"`
	History   []lifecycle.Record `json:"history"`
}

var inspectCmd = &cobra.Command{
	Use:     "inspect <id>",
	Aliases: []string{"stat"},
	Short:   "Inspect VM state and lifecycle history",
	Args:    cobra.ExactArgs(1),
	RunE:    runInspect,
}

func init() {
	rootCmd.AddCommand(inspectCmd)
}

func runInspect(cmd *cobra.Command, args []string) error {
	vmID := args[0]

	mgr := state.NewManager()
	vmState, err := mgr.Get(vmID)
	if err != nil {
		return err
	}

	store := lifecycle.NewStore(mgr.Dir(vmID))
	rec, err := store.Load()
	if err != nil {
		return err
	}
	history, err := store.History()
	if err != nil {
		return err
	}

	out := inspectOutput{
		VM:        vmState,
		Lifecycle: *rec,
		History:   history,
	}
	data, err := json.MarshalIndent(out, "", "  ")
	if err != nil {
		return err
	}
	fmt.Println(string(data))
	return nil
}
