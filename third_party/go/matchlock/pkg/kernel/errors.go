package kernel

import "errors"

var (
	ErrDownloadKernel       = errors.New("download kernel")
	ErrKernelMetadataInit   = errors.New("initialize kernel metadata")
	ErrListKernelCache      = errors.New("list kernel cache")
	ErrReadKernelMetadata   = errors.New("read kernel metadata")
	ErrWriteKernelMetadata  = errors.New("write kernel metadata")
	ErrRemoveKernel         = errors.New("remove kernel")
	ErrKernelCacheNotFound  = errors.New("kernel cache entry not found")
	ErrInvalidKernelRef     = errors.New("invalid kernel reference")
	ErrKernelPath           = errors.New("resolve kernel path")
	ErrKernelNotFoundOnDisk = errors.New("kernel file not found")
	ErrParseReference       = errors.New("parse reference")
	ErrParsePlatform        = errors.New("parse platform")
	ErrGetDescriptor        = errors.New("get image descriptor")
	ErrGetImage             = errors.New("get image")
	ErrGetLayers            = errors.New("get layers")
	ErrNoLayers             = errors.New("no layers in image")
	ErrUncompressLayer      = errors.New("get uncompressed layer")
	ErrCreateDirectory      = errors.New("create directory")
	ErrReadLayer            = errors.New("read layer")
	ErrWriteKernel          = errors.New("write kernel")
	ErrRenameKernel         = errors.New("rename kernel")
	ErrCreateFile           = errors.New("create file")
	ErrKernelNotFound       = errors.New("kernel file not found in archive")
)
