package errx

import (
	"errors"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

var errSentinel = errors.New("sentinel")

func TestWrap(t *testing.T) {
	t.Run("wraps sentinel and cause", func(t *testing.T) {
		cause := errors.New("cause")

		err := Wrap(errSentinel, cause)
		require.Error(t, err)
		assert.ErrorIs(t, err, errSentinel)
		assert.ErrorIs(t, err, cause)
	})

	t.Run("returns nil when cause is nil", func(t *testing.T) {
		err := Wrap(errSentinel, nil)
		assert.NoError(t, err)
	})

	t.Run("returns cause when sentinel is nil", func(t *testing.T) {
		cause := errors.New("cause")

		err := Wrap(nil, cause)
		require.Error(t, err)
		assert.Same(t, cause, err)
	})
}

func TestWith(t *testing.T) {
	t.Run("includes sentinel and wrapped cause", func(t *testing.T) {
		cause := errors.New("cause")

		err := With(errSentinel, ": extra %s: %w", "ctx", cause)
		require.Error(t, err)
		assert.ErrorIs(t, err, errSentinel)
		assert.ErrorIs(t, err, cause)
		assert.Contains(t, err.Error(), "extra ctx")
	})

	t.Run("returns nil when sentinel and format are empty", func(t *testing.T) {
		err := With(nil, "")
		assert.NoError(t, err)
	})

	t.Run("returns formatted error without sentinel when sentinel is nil", func(t *testing.T) {
		err := With(nil, "plain %s", "error")
		require.Error(t, err)
		assert.EqualError(t, err, "plain error")
	})
}
