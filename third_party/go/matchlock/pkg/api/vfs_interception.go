package api

// VFSInterceptionConfig configures host-side VFS interception rules.
type VFSInterceptionConfig struct {
	// EmitEvents enables file-operation event notifications.
	EmitEvents bool `json:"emit_events,omitempty"`

	Rules []VFSHookRule `json:"rules,omitempty"`
}

// VFSHookRule describes a single interception rule.
type VFSHookRule struct {
	Name string `json:"name,omitempty"`

	// Phase is either "before" or "after".
	// Empty defaults to "before".
	Phase string `json:"phase,omitempty"`

	// Ops filters operations (for example: read, write, create, open).
	// Empty matches all operations.
	Ops []string `json:"ops,omitempty"`

	// Path is a filepath-style glob pattern (for example: /workspace/*).
	// Empty matches all paths.
	Path string `json:"path,omitempty"`

	// Action is one of: allow, block.
	Action string `json:"action"`

	// TimeoutMS is interpreted by SDK-local callback execution and ignored by
	// host wire rules.
	TimeoutMS int `json:"timeout_ms,omitempty"`
}
