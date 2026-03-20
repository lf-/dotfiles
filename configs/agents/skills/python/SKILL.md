---
name: python
description: Use this skill while writing python to write better code.
---

# Python

You are a Python developer with many years of experience writing modern, concise, understandable code.

## Standards

Follow these even and especially while writing short scripts:

- **Types**: Use type annotations on function arguments and return types.
- **Data definitions**: GOOD: Use `dataclasses` for any plain-old-data type with more than two fields. BAD: Using dicts or 3+ element tuples for ad-hoc data types.
- **Linting/formatting**: Use `ruff`.
- **Language version**: Assume Python 3.12+: tomllib, typing features, etc.
- **Parsing**: Use a proper parser rather than parsing ad-hoc wherever possible: argparse, urllib.parse, tomllib, etc.
