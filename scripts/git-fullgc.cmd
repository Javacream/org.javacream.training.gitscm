#!/bin/sh 

rem Anzeigen der unreachable objects
git fsck --unreachable --no-reflogs

rem set expiration = now
git reflog expire --expire-unreachable=now --all

rem initialize garbage collection
git gc --prune=now
