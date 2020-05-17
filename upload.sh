#!/bin/bash
set -e -x
mapfile -t remote_url < <(git remote)
for i in "${remote_url[@]}"; do
    git push $i master
done
