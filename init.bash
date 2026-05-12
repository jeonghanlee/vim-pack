#!/usr/bin/env bash

# -----------------------------------------------------------
# Global configuration variables
# -----------------------------------------------------------
readonly DIVIDER_LINE="-----------------------------------------------------------"
readonly MSG_FORMAT="%s\n"

declare -g SC_SCRIPT
declare -g SC_TOP
SC_SCRIPT=$(readlink -f "${BASH_SOURCE[0]:-${0}}")
SC_TOP="$( cd -P "$( dirname "${SC_SCRIPT}" )" && pwd )"

# -----------------------------------------------------------
# Helper functions
# -----------------------------------------------------------
print_divider() {
    printf "${MSG_FORMAT}" "${DIVIDER_LINE}"
}

# -----------------------------------------------------------
# Submodule and symlink setup
# -----------------------------------------------------------
print_divider
printf "Initializing git submodules at: %s\n" "${SC_TOP}"
cd "${SC_TOP}" || exit 1
git submodule update --init --recursive

print_divider
printf "Creating symbolic links in: %s\n" "${HOME}"
ln -snf "${SC_TOP}/.vimrc" "${HOME}/.vimrc"
ln -snf "${SC_TOP}/.ctags" "${HOME}/.ctags"

print_divider
printf "${MSG_FORMAT}" "Installation complete."
