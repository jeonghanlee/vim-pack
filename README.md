# VIM plugins

So many struggles to figure out how to setup the VIM plugins using built-in package management. VIM 8 or higher is required.

## Procedure

### 1. Installation
Plugins are managed as Git submodules. To install correctly within the Vim 8 package structure:

```bash
mkdir -p ~/.vim
cd ~/.vim
# Clone the repository into the .vim directory
git clone --recursive [https://github.com/jeonghanlee/vim-pack](https://github.com/jeonghanlee/vim-pack) pack
```

### 2. Configuration
The initialization script creates symbolic links from the `pack` directory to your home directory:

```bash
cd ~/.vim/pack
bash init.bash
```

*Note: This script links `~/.vim/pack/.vimrc` to `~/.vimrc` and handles `.ctags` as well.*

### 3. Required System Packages
To enable full functionality (fuzzy search, status bar icons, and code tagging), install the following:

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install -y universal-ctags powerline fzf silversearcher-ag

# Fedora/RHEL
sudo dnf install universal-ctags vim-powerline fzf the_silver_searcher
```

---

## Usage and Key Mappings

This configuration uses **Backspace** as the `<leader>` key for stable and fast plugin control.

* **[Detailed Plugin Usage & Key Mappings Guide](./README_PluginUsage.md)**

### Quick Summary of Plugin Toggles:
* `Backspace + t` : Toggle Floating Terminal (Floaterm)
* `Backspace + y` : Toggle Taglist (Code structure)
* `Backspace + e` : Toggle NERDTree (File explorer)
* `Ctrl + s` : Quick Save current file

---

## Maintenance (For Developers)

### How to add a new module
```bash
# Usage: bash add_mod.bash [BASE_URL] [MODULE_NAME]
bash add_mod.bash [https://github.com/junegunn](https://github.com/junegunn) fzf.vim
```

### Update submodules
To update all plugins to their latest versions:
```bash
git submodule update --remote --merge
```

## References
[1] https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
