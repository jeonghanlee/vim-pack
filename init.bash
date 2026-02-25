#!/usr/bin/env bash

# -----------------------------------------------------------
# Global configuration variables
# -----------------------------------------------------------
readonly DIVIDER_LINE="-----------------------------------------------------------"
readonly MSG_FORMAT="%s\n"
readonly DEBIAN_RELEASE_FILE="/etc/debian_version"
readonly REDHAT_RELEASE_FILE="/etc/redhat-release"
readonly BUILD_DIR="/tmp/ctags_build"
readonly CTAGS_REPO="https://github.com/universal-ctags/ctags.git"

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
# Build logic for Rocky 8
# -----------------------------------------------------------
install_ctags_from_source() {
    printf "${MSG_FORMAT}" "Universal-ctags not found. Starting source build..."
    
    # Install build dependencies
    sudo dnf install -y autoconf automake pkgconfig gcc make libtool
    
    if [[ -d "${BUILD_DIR}" ]]; then
        rm -rf "${BUILD_DIR}"
    fi

    git clone "${CTAGS_REPO}" "${BUILD_DIR}"
    cd "${BUILD_DIR}" || exit 1
    
    ./autogen.sh
    ./configure --prefix=/usr/local
    make
    sudo make install
    
    cd - > /dev/null || exit 1
    rm -rf "${BUILD_DIR}"
}

# -----------------------------------------------------------
# System dependency installation
# -----------------------------------------------------------
print_divider
printf "${MSG_FORMAT}" "Checking OS and installing system dependencies..."

if [[ -f "${DEBIAN_RELEASE_FILE}" ]]; then
    # Debian/Ubuntu path
    sudo apt update
    sudo apt install -y universal-ctags powerline fzf silversearcher-ag
elif [[ -f "${REDHAT_RELEASE_FILE}" ]]; then
    # Rocky/RHEL 8.x path
    sudo dnf install -y epel-release
    # Use || true to prevent script termination if universal-ctags is missing in repo
    sudo dnf install -y git powerline fzf the_silver_searcher universal-ctags || true
    
    # Check if universal-ctags is installed, if not, build from source
    if ! command -v ctags >/dev/null 2>&1; then
        install_ctags_from_source
    fi
else
    printf "${MSG_FORMAT}" "Error: Unsupported operating system."
    exit 1
fi

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
