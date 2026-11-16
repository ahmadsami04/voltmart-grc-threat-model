
#!/usr/bin/env bash
# VoltMart Electronics - Synthetic system evidence collector
# Uses local demo files only. Does not inspect real user accounts.

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

CONFIG_SOURCE="$BASE_DIR/sample-input/config"
USERS_SOURCE="$BASE_DIR/sample-input/users"

CONFIG_OUTPUT="$BASE_DIR/sample-output/config"
USERS_OUTPUT="$BASE_DIR/sample-output/users"
SYSTEM_OUTPUT="$BASE_DIR/sample-output/system"

mkdir -p "$CONFIG_OUTPUT" "$USERS_OUTPUT" "$SYSTEM_OUTPUT"

errors=0
collected=0

collect_files() {
    local source_dir="$1"
    local destination_dir="$2"
    local pattern="$3"
    local category="$4"
    local found=0
    local file

    for file in "$source_dir"/$pattern; do
        [[ -f "$file" && ! -L "$file" ]] || continue
        found=1

        if cp "$file" "$destination_dir/"; then
            echo "[OK] $category: $(basename "$file")"
            collected=$((collected + 1))
        else
            echo "[ERROR] Could not copy: $file" >&2
            errors=$((errors + 1))
        fi
    done

    if [[ "$found" -eq 0 ]]; then
        echo "[ERROR] No $category files found" >&2
        errors=$((errors + 1))
    fi
}

collect_files "$CONFIG_SOURCE" "$CONFIG_OUTPUT" "*.conf" "Configuration"
collect_files "$USERS_SOURCE" "$USERS_OUTPUT" "*.csv" "Users"

# Write a safe synthetic snapshot without host-specific information.
cat > "$SYSTEM_OUTPUT/demo_system_snapshot.txt" <<'EOF'
Project: VoltMart Electronics
Environment: Fictional local test environment
System ID: VOLTMART-DEMO-01
System Type: Retail application demonstration
Operating System: Simulated Linux environment
Evidence Classification: Synthetic sample only
Production Evidence: No
EOF

if [[ -s "$SYSTEM_OUTPUT/demo_system_snapshot.txt" ]]; then
    echo "[OK] System: demo_system_snapshot.txt"
    collected=$((collected + 1))
else
    echo "[ERROR] System snapshot could not be created" >&2
    errors=$((errors + 1))
fi

echo ""
echo "Collected: $collected files"
echo "Errors: $errors"

if [[ "$errors" -gt 0 ]]; then
    exit 1
fi

exit 0
