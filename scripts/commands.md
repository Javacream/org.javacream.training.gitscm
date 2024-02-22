## Setup

* git config --global user.name "Rainer Sawitzki"
* git config --global usser.email rainer.sawitzki@gmail.com

## Helpful log
* git log --all --decorate --oneline --graph
* git config --global alias.hl "log --all --decorate --oneline --graph"

## Dangling Objects
### Anzeigen der unreachable objects
git fsck --unreachable --no-reflogs

### set expiration = now
git reflog expire --expire-unreachable=now --all

### initialize garbage collection
git gc --prune=now
