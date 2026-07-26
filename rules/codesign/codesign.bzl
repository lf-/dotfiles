# macOS code signing for buck2-built binaries.
#
# Example (//third_party/go/matchlock:matchlock-signed):
#
#   load("//rules/codesign:codesign.bzl", "codesign_binary")
#   codesign_binary(
#       name = "matchlock-signed",
#       binary = ":matchlock",
#       entitlements = "matchlock.entitlements",  # same-package; else export_file it
#   )

def _codesign_binary_impl(ctx: AnalysisContext) -> list[Provider]:
    outputs = ctx.attrs.binary[DefaultInfo].default_outputs
    if len(outputs) != 1:
        fail("codesign_binary: `binary` must have exactly one default output, got {}".format(outputs))
    src = outputs[0]
    out = ctx.actions.declare_output(ctx.attrs.out or src.basename)

    sign_args = cmd_args("--force", "--sign", ctx.attrs.identity)
    if ctx.attrs.entitlements != None:
        sign_args.add("--entitlements", ctx.attrs.entitlements)  # artifact -> tracked input
    sign_args.add(ctx.attrs.codesign_flags)

    # One action does cp + chmod + codesign: buck2 permits only one action per
    # output, and signing in place is forbidden because the input is another
    # action's output.  `cp` preserves the mode bits; `chmod u+w` is needed
    # because cache-materialized inputs may arrive read-only.
    ctx.actions.run(
        cmd_args(
            "/bin/sh",
            "-c",
            'set -eu; src="$1"; dst="$2"; shift 2; cp "$src" "$dst"; chmod u+w "$dst"; exec /usr/bin/codesign "$@" "$dst"',
            "--",  # $0
            src,  # $1
            out.as_output(),  # $2
            sign_args,  # "$@" after shift
        ),
        category = "codesign",
        identifier = src.basename,
        local_only = True,  # codesign requires macOS, this machine
    )
    return [DefaultInfo(default_output = out), RunInfo(args = cmd_args(out))]

_codesign_binary = rule(impl = _codesign_binary_impl, attrs = {
    "binary": attrs.dep(),
    "codesign_flags": attrs.list(attrs.string(), default = []),
    "entitlements": attrs.option(attrs.source(), default = None),
    "identity": attrs.string(default = "-"),  # "-" = ad-hoc
    "out": attrs.option(attrs.string(), default = None),
})

# `prelude//platforms:default` injects the host OS constraint, so baking the
# macOS constraint in here makes these targets skip cleanly on Linux.
def codesign_binary(*, target_compatible_with = None, **kwargs):
    _codesign_binary(
        target_compatible_with = target_compatible_with or ["prelude//os/constraints:macos"],
        **kwargs
    )
