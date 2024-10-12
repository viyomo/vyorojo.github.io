#!/usr/bin/env bash

# This is a script to deploy the current state of the main branch to codeberg pages.
# The recommended use is to register this as a pre-push hook like so:
# $ cp deploy-pages.sh .git/hooks/pre-push
#
# Once registered, whenever a push is performed on the `main` branch, this script does the following:
# 1. build the site from the state of HEAD
# 2. commit and push the resulting output to branch $remote_branch on remote $remote
#    (these two variables should be set below according to where the pages should land, e.g. remote_branch=pages and remote=origin)
#
# You can also run this script by itself to deploy the pages.
#
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2024 JohnnyJayJay

# Bash strict mode (http://redsymbol.net/articles/unofficial-bash-strict-mode/)
set -euo pipefail
IFS=$'\n\t'

# FIXME set these variables
ssg_build_cmd="hugo"
ssg_output_dir="public"
remote="origin"
remote_branch="pages"

current_branch=$(git symbolic-ref --short HEAD)
# If current branch is main or no argument was passed to the script (this is the case when /not/ run by git as a hook)
if [[ "$current_branch" = "main" || -z "${1:-}" ]] ; then
    echo "Push to main detected; building site"
    git add .
    git commit -m "Actualizacion"
    git push
    set -x
    # The purpose of temporarily creating this file is forcing git to
    # actually perform a stash – it can fail silently otherwise
    touch .stash-trigger
    git stash push --quiet --include-untracked
    ssg_fail=0
    # if ssg_build_cmd exits with a non-0 exit code
    if ! eval "$ssg_build_cmd" ; then
        ssg_fail=1
    fi

    git stash pop --quiet
    rm .stash-trigger

    if (( "$ssg_fail" )) ; then
        set +x
        echo "Static site generation failed; aborting push."
        echo "To push without deploying pages, run again with --no-verify"
        exit 1
    fi

    git worktree add --quiet pages

    if (
        # Unsetting git variables from surrounding context
        unset "$(git rev-parse --local-env-vars)"
        cd pages
        git fetch "$remote" "$remote_branch"
        git reset --soft "$remote/$remote_branch"
        # get any changes from the ssg output to the pages worktree
        rsync --archive --delete --exclude '.git' "../$ssg_output_dir/" . || return
        git add --all || return
        # don't fail if there's nothing to commit
        git commit --quiet --message 'page deployment' || true
        git push "$remote" "pages:$remote_branch" || return
    ) ; then
        set +x; echo "Pages deployment successful"; set -x
    fi

    git worktree remove --force pages
fi
