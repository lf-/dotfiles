package errx

import "fmt"

// With prefixes the formatted message with a sentinel error.
// Example: With(ErrFoo, ": detail: %w", err)
func With(kind error, format string, args ...any) error {
	if kind == nil {
		if format == "" {
			return nil
		}
		return fmt.Errorf(format, args...)
	}
	if format == "" {
		return kind
	}

	vals := make([]any, 0, len(args)+1)
	vals = append(vals, kind)
	vals = append(vals, args...)
	return fmt.Errorf("%w"+format, vals...)
}

// Wrap combines an operation sentinel and underlying error while preserving
// errors.Is checks for both values.
func Wrap(kind, err error) error {
	if err == nil {
		return nil
	}
	if kind == nil {
		return err
	}
	return With(kind, ": %w", err)
}
