#!/usr/bin/env sh

set -e

travis login --github-token "$githubAccessToken"

touch /enable-cmd-log
# enable doesn't seem to reliably sync so we retry a few times
max_retry_count=4
n=0
until [ $n -gt $max_retry_count ]
do
  travis enable -r "$repo" --skip-version-check &> /enable-cmd-log && break
  n=$((n+1))
  sleep 1
done

cat /enable-cmd-log
if [ "$n" -gt "$max_retry_count" ]; then
  exit 1
fi