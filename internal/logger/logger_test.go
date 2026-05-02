package logger

import (
	"bytes"
	"log/slog"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestParseLevel(t *testing.T) {
	tests := []struct {
		name  string
		input string
		want  slog.Level
	}{
		{name: "debug", input: "debug", want: slog.LevelDebug},
		{name: "info", input: "info", want: slog.LevelInfo},
		{name: "default empty", input: "", want: slog.LevelInfo},
		{name: "warn", input: "warn", want: slog.LevelWarn},
		{name: "warning alias", input: "warning", want: slog.LevelWarn},
		{name: "error", input: "error", want: slog.LevelError},
		{name: "case and space insensitive", input: " DEBUG ", want: slog.LevelDebug},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := ParseLevel(tt.input)
			require.NoError(t, err)
			assert.Equal(t, tt.want, got)
		})
	}
}

func TestParseLevelRejectsInvalidLevel(t *testing.T) {
	_, err := ParseLevel("trace")
	require.Error(t, err)
	assert.Contains(t, err.Error(), "invalid log level")
}

func TestConfigureEnablesDebug(t *testing.T) {
	restoreDefaultLogger(t)

	var buf bytes.Buffer
	require.NoError(t, Configure(&buf, "debug"))

	slog.Debug("debug message", "component", "test")

	out := buf.String()
	assert.Contains(t, out, "level=DEBUG")
	assert.Contains(t, out, "msg=\"debug message\"")
	assert.Contains(t, out, "component=test")
}

func TestConfigureDefaultsToInfo(t *testing.T) {
	restoreDefaultLogger(t)

	var buf bytes.Buffer
	require.NoError(t, Configure(&buf, "info"))

	slog.Debug("hidden debug message")
	slog.Info("info message")

	out := buf.String()
	assert.NotContains(t, out, "hidden debug message")
	assert.Contains(t, out, "level=INFO")
	assert.Contains(t, out, "msg=\"info message\"")
}

func restoreDefaultLogger(t *testing.T) {
	t.Helper()
	logger := slog.Default()
	t.Cleanup(func() { slog.SetDefault(logger) })
}
