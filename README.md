<!-- vim: set foldlevel=2: -->

# cpp-template
[![CI/CD](https://github.com/barreiroleo/cpp-template/actions/workflows/build.yml/badge.svg)](https://github.com/barreiroleo/cpp-template/actions/workflows/build.yml)

A multiplatform C++23 project template with Cmake & GTest support out of the box.

## Table of Contents
<details>
<summary>Table of Contents</summary>

1. [Features](#features)
2. [Local development](#local-development)
3. [CI/CD](#cicd)
4. [Known Issues](#known-issues)

</details>

## Features
- **C++23**
- **Multiplatform**: Linux (GCC & Clang), Windows
- **Automatic releases**: Triggers releases when push version tags (v0.0.1)
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

## CI/CD
The build job will run on every push to the `master` branch and on pull requests.
It can also be triggered manually.
```bash
git push origin master
```

Releases will be generated when version tags are pushed. The release action will consider any tag
that starts with 'v' as a version tag.
```bash
git tag v0.0.1
git push --tags
```

## Known Issues
Pushing a commit and pushing tags are separate events, so releases will trigger the entire build
process again, even if artifacts were generated when the commit was pushed.
