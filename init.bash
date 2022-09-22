#!/usr/bin/env bash
declare -g SC_SCRIPT;
declare -g SC_TOP;
SC_SCRIPT=${BASH_SOURCE[0]:-${0}}
SC_TOP="$( cd -P "$( dirname "$SC_SCRIPT" )" && pwd )"


sudo apt install powerline exuberant-ctags

git submodule update --init ./
ln -snf "${SC_TOP}/.vimrc" "${HOME}/.vimrc"
ln -snf "${SC_TOP}/.ctags" "${HOME}/.ctags"

