#!/bin/sh

# Script to configure GitHooks

# Directories
GIT_ROOT=$(git rev-parse --show-toplevel)
SCRIPTS_DIRECTORY=$GIT_ROOT/scripts
GIT_HOOKS_DIRECTORY=$SCRIPTS_DIRECTORY/git-hooks

# -- 1 -- Reassigning hooks
echo "1. Reassigning Git Hooks:"
git config core.hooksPath $GIT_HOOKS_DIRECTORY
chmod +x $GIT_HOOKS_DIRECTORY/*
echo "Hooks successfully reassigned to '$GIT_HOOKS_DIRECTORY'"