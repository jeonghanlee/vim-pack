#!/usr/bin/env bash

# -----------------------------------------------------------
# Get the absolute path of the script directory
# -----------------------------------------------------------
declare -g SC_SCRIPT
declare -g SC_TOP
SC_SCRIPT=$(readlink -f "${BASH_SOURCE[0]:-${0}}")
SC_TOP="$( cd -P "$( dirname "$SC_SCRIPT" )" && pwd )"

# -----------------------------------------------------------
# Install required system packages (Replacing exuberant with universal)
# -----------------------------------------------------------
echo "Installing system dependencies..."
sudo apt update
# Removed exuberant-ctags and added universal-ctags
sudo apt install -y universal-ctags powerline fzf silversearcher-ag

# -----------------------------------------------------------
# Initialize submodules and create symbolic links
# -----------------------------------------------------------
echo "Initializing git submodules..."
cd "${SC_TOP}"
git submodule update --init --recursive

echo "Creating symbolic links..."
ln -snf "${SC_TOP}/.vimrc" "${HOME}/.vimrc"
ln -snf "${SC_TOP}/.ctags" "${HOME}/.ctags"

echo "Installation complete. universal-ctags is now ready."
