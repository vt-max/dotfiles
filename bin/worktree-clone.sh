#!/bin/bash
# This script is based on workflow from https://morgan.cugerone.com/blog/workarounds-to-git-worktree-using-bare-repository-and-cannot-fetch-remote-branches/.

set -e

usage() {
    echo "Usage: worktree-clone.sh URL"
    echo "Create a bare clone of URL and initialise worktree setup."
    echo "This includes configuration to fetch remote branches."
}

if [[ $# -eq 0 ]] ; then
    usage
    exit 1
fi

url=$1
basename=${url##*/}

git clone --bare "${url}"

(
    cd "${basename}" || exit 1

    # Configure fetch to fetch remotes.
    git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"

    # Fetch branches from remote.
    git fetch origin

    # Extract default branch from origin.
    default_branch=$(git remote show origin | sed -n '/HEAD branch/s/.*: //p')

    # Add main and develop worktrees.
    git worktree add "${default_branch}"
    git worktree add work
)
