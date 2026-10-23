#!/bin/bash

has_undo=false

while [ $# -gt 0 ]; do
  case "$1" in
    --undo)
      has_undo=true
      shift
      ;;
    *)
      shift
      ;;
  esac
done

if [ "$has_undo" = true ]; then
	git push origin -d codespace-temp
  git reset --soft HEAD~1
	git switch main
	git branch -d codespace-temp
else
  git checkout -b codespace-temp
	git add .
	git commit -m "temp"
	git push --set-upstream origin codespace-temp
fi
