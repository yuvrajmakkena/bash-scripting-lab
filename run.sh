#!/usr/bin/env bash
# Run this from inside your Bash-practice/ directory

# Define list of files
files=(
  "00-setup/env-check.sh"
  "01-variables/quoting.sh"
  "01-variables/naming-conventions.sh"
  "02-arguments/positional.sh"
  "02-arguments/shift-until.sh"
  "02-arguments/getopts-demo.sh"
  "03-arrays/indexed.sh"
  "03-arrays/associative.sh"
  "04-control-flow/if-then-else.sh"
  "04-control-flow/case-statement.sh"
  "04-control-flow/for-loop.sh"
  "04-control-flow/while-until.sh"
  "04-control-flow/select-menu.sh"
  "06-io-redirection/stdin-stdout.sh"
  "06-io-redirection/redirect-files.sh"
  "06-io-redirection/here-docs.sh"
  "06-io-redirection/pipes-chains.sh"
  "07-string-ops/substring.sh"
  "07-string-ops/pattern-remove.sh"
  "07-string-ops/replace.sh"
  "07-string-ops/length-case.sh"
  "08-arithmetic/basic-math.sh"
  "08-arithmetic/bc-float-demo.sh"
  "09-file-ops/test-conditions.sh"
  "09-file-ops/find-files.sh"
  "09-file-ops/permissions.sh"
  "10-error-handling/exit-codes.sh"
  "10-error-handling/trap-demo.sh"
  "11-processes/background-jobs.sh"
  "11-processes/pid-demo.sh"
  "11-processes/subshells.sh"
  "12-debugging/trace-mode.sh"
  "12-debugging/debug-func.sh"
  "13-advanced/eval-demo.sh"
  "13-advanced/indirect-ref.sh"
  "13-advanced/regex-match.sh"
  "14-user-interaction/read-input.sh"
  "14-user-interaction/select-interactive.sh"
  "15-terminal-output/colors.sh"
  "15-terminal-output/formatting.sh"
  "16-external-tools/tool-integration.sh"
  "17-common-pitfalls/gotchas.sh"
)

# Create files with shebang + placeholder
for f in "${files[@]}"; do
  dir=$(dirname "$f")
  mkdir -p "$dir"
  if [[ ! -f "$f" ]]; then
    cat > "$f" <<EOF
#!/usr/bin/env bash
# $(basename "$f") - TODO: add examples

EOF
  fi
  chmod +x "$f"
done
