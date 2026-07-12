package api

import (
	"fmt"
	"os"
	"sort"
	"strings"
)

const GeneratedSecretPlaceholderPrefix = "SANDBOX_SECRET_"

const generatedSecretPlaceholderExample = GeneratedSecretPlaceholderPrefix + "<hex>"

// ParseSecret parses a secret string in the format "NAME=VALUE@host1,host2" or "NAME@host1,host2".
// When no inline value is provided, the value is read from the environment variable $NAME.
func ParseSecret(s string) (string, Secret, error) {
	atIdx := strings.LastIndex(s, "@")
	if atIdx == -1 {
		return "", Secret{}, fmt.Errorf("missing @hosts (format: NAME=VALUE@host1,host2 or NAME@host1,host2)")
	}

	hostsStr := s[atIdx+1:]
	hosts, err := parseSecretHosts(hostsStr)
	if err != nil {
		return "", Secret{}, err
	}

	nameValue := s[:atIdx]
	eqIdx := strings.Index(nameValue, "=")

	var name, value string
	if eqIdx == -1 {
		name = nameValue
		value = os.Getenv(name)
		if value == "" {
			return "", Secret{}, fmt.Errorf("environment variable $%s is not set (hint: use 'sudo -E' to preserve env vars, or pass inline: %s=VALUE@%s)", name, name, hostsStr)
		}
	} else {
		name = nameValue[:eqIdx]
		value = nameValue[eqIdx+1:]
	}

	if name == "" {
		return "", Secret{}, fmt.Errorf("secret name cannot be empty")
	}

	return name, Secret{
		Value: value,
		Hosts: hosts,
	}, nil
}

// ParseSecretPlaceholder parses a placeholder override in the format
// "NAME=PLACEHOLDER".
func ParseSecretPlaceholder(s string) (string, string, error) {
	eqIdx := strings.Index(s, "=")
	if eqIdx == -1 {
		return "", "", fmt.Errorf("missing = (format: NAME=PLACEHOLDER)")
	}

	name := strings.TrimSpace(s[:eqIdx])
	if name == "" {
		return "", "", fmt.Errorf("secret name cannot be empty")
	}

	placeholder := strings.TrimSpace(s[eqIdx+1:])
	if placeholder == "" {
		return "", "", fmt.Errorf("secret placeholder cannot be empty")
	}

	return name, placeholder, nil
}

type namedSecretPlaceholder struct {
	name  string
	value string
}

// ValidateSecretPlaceholders rejects placeholder pairs that can make
// substitution order-dependent at request time.
func ValidateSecretPlaceholders(secrets map[string]Secret) error {
	placeholders := make([]namedSecretPlaceholder, 0, len(secrets))
	generatedNames := make([]string, 0, len(secrets))
	for name, secret := range secrets {
		if secret.Placeholder == "" {
			generatedNames = append(generatedNames, name)
			continue
		}
		placeholders = append(placeholders, namedSecretPlaceholder{
			name:  name,
			value: secret.Placeholder,
		})
	}

	sort.Slice(placeholders, func(i, j int) bool {
		if placeholders[i].value == placeholders[j].value {
			return placeholders[i].name < placeholders[j].name
		}
		return placeholders[i].value < placeholders[j].value
	})
	sort.Strings(generatedNames)

	for i := 0; i < len(placeholders); i++ {
		for j := i + 1; j < len(placeholders); j++ {
			left := placeholders[i]
			right := placeholders[j]
			if !secretPlaceholdersOverlap(left.value, right.value) {
				continue
			}
			return fmt.Errorf(
				"secret placeholders %q (%s) and %q (%s) overlap",
				left.name,
				left.value,
				right.name,
				right.value,
			)
		}
	}

	if len(generatedNames) == 0 {
		return nil
	}

	for _, placeholder := range placeholders {
		if !strings.Contains(GeneratedSecretPlaceholderPrefix, placeholder.value) {
			continue
		}
		return fmt.Errorf(
			"secret placeholders %q (%s) and %q (%s) overlap",
			placeholder.name,
			placeholder.value,
			generatedNames[0],
			generatedSecretPlaceholderExample,
		)
	}

	return nil
}

func secretPlaceholdersOverlap(left, right string) bool {
	return strings.Contains(left, right) || strings.Contains(right, left)
}

func parseSecretHosts(hostsStr string) ([]string, error) {
	if hostsStr == "" {
		return nil, fmt.Errorf("no hosts specified after @")
	}

	rawHosts := strings.Split(hostsStr, ",")
	hosts := make([]string, 0, len(rawHosts))
	for _, host := range rawHosts {
		host = strings.TrimSpace(host)
		if host == "" {
			return nil, fmt.Errorf("secret host cannot be empty")
		}
		hosts = append(hosts, host)
	}

	if len(hosts) == 0 {
		return nil, fmt.Errorf("no hosts specified after @")
	}

	return hosts, nil
}
