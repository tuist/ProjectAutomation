#!/bin/sh

cd tuist
git fetch
git checkout "$1"
cd ..
git commit -am "$1"
git tag "$1"
git push origin --tags
