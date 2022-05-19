#!/usr/bin/env bash

git submodule update --init ./
git submodule update --remote --merge

git status
