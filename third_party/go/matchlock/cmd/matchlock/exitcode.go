package main

// exitCodeError is a non-user-facing command error used to preserve
// subprocess exit codes without bypassing deferred cleanup.
type exitCodeError struct {
	code int
}

func (e *exitCodeError) Error() string {
	return ""
}

func (e *exitCodeError) ExitCode() int {
	return e.code
}

func commandExit(code int) error {
	if code == 0 {
		return nil
	}
	return &exitCodeError{code: code}
}
