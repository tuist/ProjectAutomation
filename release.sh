#!/bin/sh

cd tuist
git checkout "$1"
cd ..
git commit -am "$1"
git tag "$1"
git push origin --follow-tags
