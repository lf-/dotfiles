package sandbox

import (
	"context"

	"github.com/jingkaihe/matchlock/pkg/api"
	"github.com/jingkaihe/matchlock/pkg/kernel"
	"github.com/jingkaihe/matchlock/pkg/lifecycle"
)

func resolveKernelForConfig(ctx context.Context, config *api.Config, opts *Options, lifecycleStore *lifecycle.Store) (string, error) {
	if opts != nil && opts.KernelPath != "" {
		recordKernelResolution(lifecycleStore, "internal:options", opts.KernelPath)
		return opts.KernelPath, nil
	}

	requestedRef := ""
	if config != nil && config.Kernel != nil {
		requestedRef = config.Kernel.Ref
	}

	var (
		kernelPath string
		err        error
	)
	if requestedRef == "" {
		kernelPath, err = kernel.ResolveKernelPath(ctx)
	} else {
		kernelPath, err = kernel.ResolveKernelRef(ctx, requestedRef)
	}
	if err != nil {
		return "", err
	}

	recordedRef := requestedRef
	if recordedRef == "" {
		recordedRef = defaultKernelRefForRecord()
	}
	recordKernelResolution(lifecycleStore, recordedRef, kernelPath)
	return kernelPath, nil
}

func recordKernelResolution(lifecycleStore *lifecycle.Store, ref, path string) {
	if lifecycleStore == nil {
		return
	}
	_ = lifecycleStore.SetResource(func(r *lifecycle.Resources) {
		r.KernelRef = ref
		r.KernelPath = path
	})
}

func defaultKernelRefForRecord() string {
	return kernel.ImageReference("")
}
