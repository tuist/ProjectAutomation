#!/bin/sh

set -e

if [ ! -d tuist ]; then
  git clone https://github.com/tuist/tuist/
fi
cd tuist
git fetch
git checkout "$1"
cd ..
rm -rf ProjectAutomation
cp -r tuist/Sources/ProjectAutomation .
git add .
git commit -am "$1" --allow-empty
git push
git tag "$1"
git push origin --tags
