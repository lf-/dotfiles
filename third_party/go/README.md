# go infrastructure

## maintenance

```
buck run :vendor && buck run :gobuckify
```

you may need to put things in `./tools.go` to cause them to get vendored (if they are a dep of something in the workspace basically, I think).

each package has its own version specs in `go.mod` (annoyingly).
there's a workspace in `//go.work` which at least kinda unifies them.

i do not particularly enjoy go.
