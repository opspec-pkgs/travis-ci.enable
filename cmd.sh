#!/usr/bin/env sh

set -e

travis login --github-token "$githubAccessToken"

travis enable -r "$repo" --skip-version-check