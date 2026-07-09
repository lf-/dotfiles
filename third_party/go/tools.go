//go:build tools

package tools

import (
	_ "github.com/google/uuid"
	_ "github.com/kballard/go-shellquote"
	_ "go.starlark.net/starlark"
	_ "go.starlark.net/starlarkstruct"
	_ "go.starlark.net/syntax"
	_ "golang.org/x/term"
)
