package main

import (
	"encoding/json"
	"fmt"
	"os"
	"text/tabwriter"

	"github.com/spf13/cobra"

	"github.com/jingkaihe/matchlock/pkg/kernel"
)

var kernelCmd = &cobra.Command{
	Use:   "kernel",
	Short: "Manage cached guest kernels",
}

var kernelLsCmd = &cobra.Command{
	Use:     "ls",
	Aliases: []string{"list"},
	Short:   "List cached guest kernels",
	RunE:    runKernelLs,
}

var kernelRmCmd = &cobra.Command{
	Use:   "rm [version]",
	Short: "Remove a cached guest kernel",
	Args:  cobra.MaximumNArgs(1),
	RunE:  runKernelRm,
}

func init() {
	kernelLsCmd.Flags().Bool("json", false, "Output machine-readable JSON")
	kernelRmCmd.Flags().Bool("all", false, "Remove all cached kernels")
	kernelRmCmd.Flags().String("ref", "", "Remove a cached kernel by OCI reference")

	kernelCmd.AddCommand(kernelLsCmd)
	kernelCmd.AddCommand(kernelRmCmd)
	rootCmd.AddCommand(kernelCmd)
}

func runKernelLs(cmd *cobra.Command, args []string) error {
	jsonOutput, _ := cmd.Flags().GetBool("json")
	mgr := kernel.NewManager()
	entries, err := mgr.List()
	if err != nil {
		return err
	}

	if jsonOutput {
		return json.NewEncoder(os.Stdout).Encode(entries)
	}

	w := tabwriter.NewWriter(os.Stdout, 0, 0, 2, ' ', 0)
	fmt.Fprintln(w, "TYPE\tIDENTIFIER\tSOURCE REF\tARCH\tSIZE")
	for _, entry := range entries {
		identifier := entry.Version
		if entry.Kind == kernel.CacheKindRef {
			identifier = entry.SourceRef
		}
		sourceRef := entry.SourceRef
		if sourceRef == "" {
			sourceRef = "-"
		}
		fmt.Fprintf(w, "%s\t%s\t%s\t%s\t%s\n",
			entry.Kind,
			identifier,
			sourceRef,
			entry.Arch,
			humanizeMB(entry.Size),
		)
	}
	w.Flush()
	return nil
}

func runKernelRm(cmd *cobra.Command, args []string) error {
	removeAll, _ := cmd.Flags().GetBool("all")
	ref, _ := cmd.Flags().GetString("ref")
	mgr := kernel.NewManager()

	switch {
	case removeAll:
		if len(args) != 0 || ref != "" {
			return fmt.Errorf("--all cannot be combined with a version argument or --ref")
		}
		if err := mgr.RemoveAll(); err != nil {
			return err
		}
		fmt.Println("Removed all cached kernels")
		return nil
	case ref != "":
		if len(args) != 0 {
			return fmt.Errorf("--ref cannot be combined with a version argument")
		}
		if err := mgr.RemoveRef(ref); err != nil {
			return err
		}
		fmt.Printf("Removed cached kernel ref %s\n", ref)
		return nil
	default:
		if len(args) != 1 {
			return fmt.Errorf("accepts 1 arg(s), received %d", len(args))
		}
		version := args[0]
		if err := mgr.RemoveVersion(version); err != nil {
			return err
		}
		fmt.Printf("Removed cached kernel %s\n", version)
		return nil
	}
}
