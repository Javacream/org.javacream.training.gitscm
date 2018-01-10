#!/bin/sh 
 
git fsck --unreachable --no-reflogs
git reflog expire --expire-unreachable=now --all
git gc --prune=now
