#!/usr/bin/env bash
set -e

# Directories to format
SOURCE_DIRS=("${PROJECT_SOURCE_DIR:-./src}" "${PROJECT_SOURCE_DIR:-./lib}" "${PROJECT_SOURCE_DIR:-./tests}")

# Default args
MODE="modified" # "modified" or "all"

# Parse arguments
for arg in "$@"; do
    case $arg in
        --help)
            echo "Usage: $0 [--mode=modified|all]"
            echo "  --mode: Format mode [modified|all]"
            exit 0
            ;;
        --mode=*)
            MODE="${arg#*=}"
            if [ "$MODE" != "modified" ] && [ "$MODE" != "all" ]; then
                echo "Invalid mode: $MODE" >&2
                exit 1
            fi
            ;;
        *)
            echo "Invalid argument: $arg" >&2
            exit 1
            ;;
    esac
done

# Check if clang-format is installed
function check_clang_format() {
    CLANG_FORMAT=$(command -v clang-format)
    if [ -z "$CLANG_FORMAT" ]; then
        echo "clang-format not found!" >&2
        exit 1
    fi
}

# Format the given files
function format_files() {
    local files=()
    if [ "$MODE" = "modified" ]; then
        files=$(git status --porcelain | grep -E '\.(cpp|hpp|h|cc|c)$' | awk '{print $2}')
    else
        files=$(git ls-files --exclude-standard | grep -E '\.(cpp|hpp|h|cc|c)$')
    fi
    echo "Formatting files: ${files[@]}"
    clang-format -i -style=file ${files[@]}
}

# Main function
function main() {
    check_clang_format
    format_files
}

main "$@"