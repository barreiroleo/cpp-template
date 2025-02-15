<!-- vim: set foldlevel=2: -->

# cpp-template
A multiplatform C++23 project template with Cmake & GTest support out of the box.

## Features
- **C++23**
- **Multiplatform**: Linux (GCC & Clang), Windows
- **clang-format**: Webkit-based style. Few lines, simple tweaks
- **clang-tidy**: Strict and modern settings
- **Local Makefile for development**:
    - Uses CMake + Ninja by default
    - Exports `compile_commands.json`
    - Sets common ASAN environment defaults
    - Enables colorful GTest output
    - Provides frequently used commands

## Local development
```bash
# All-in-one (project setup, build, and test)
make all
# Project setup
make gen
# Build
make build
# Test
make test
# Cleanup
make clean
# Graph dependencies
make graph
```
