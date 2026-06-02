# tests/smoke.star — stable across upstream releases.
# just is a command runner. Assert on the contract (exit code, version shape,
# input-derived output), never on help/version prose.

JUST = "just.exe" if ocx.target_platform.os == ocx.os.Windows else "just"

# Tier 1 + 2: liveness + version SHAPE (not a vendor string, not the exact version).
r_version = ocx.run(JUST, "--version")
expect.ok(r_version)
expect.matches(r_version.stdout, r"\d+\.\d+\.\d+")

# Tier 3: functional behavior on hermetic input.
# Write a justfile that declares a variable and use --evaluate to read it back.
# --evaluate <name> prints the value of the named variable without running any
# recipe shell — fully cross-platform and shell-free.
# Confirmed: `just --evaluate answer` prints "42\n" for `answer := "42"`.
ocx.write_file("justfile", 'answer := "42"\n')
r_eval = ocx.run(JUST, "--evaluate", "answer")
expect.ok(r_eval)
expect.contains(r_eval.stdout, "42")
