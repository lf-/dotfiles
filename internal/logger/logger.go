package logger

import (
	"fmt"
	"io"
	"log/slog"
	"strings"
)

const DefaultLevel = "info"

// Configure installs the process-wide slog logger.
func Configure(w io.Writer, levelName string) error {
	level, err := ParseLevel(levelName)
	if err != nil {
		return err
	}

	slog.SetDefault(slog.New(slog.NewTextHandler(w, &slog.HandlerOptions{Level: level})))
	return nil
}

func ParseLevel(levelName string) (slog.Level, error) {
	switch strings.ToLower(strings.TrimSpace(levelName)) {
	case "debug":
		return slog.LevelDebug, nil
	case "", "info":
		return slog.LevelInfo, nil
	case "warn", "warning":
		return slog.LevelWarn, nil
	case "error":
		return slog.LevelError, nil
	default:
		return 0, fmt.Errorf("invalid log level %q (valid: debug, info, warn, error)", levelName)
	}
}
