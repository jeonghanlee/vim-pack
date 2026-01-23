# VIM plugins

So many struggles to figure out how to setup the VIM plugins using built-in package management. Here is my struggle for them. VIM 8 is required.

## Procedure

### 1. Installation
Existing plugins are managed as Git submodules. To install everything at once, use the `--recursive` flag:

```bash
mkdir -p ~/.vim
cd ~/.vim
# Clone the repository with all submodules included
git clone --recursive https://github.com/jeonghanlee/vim-pack pack
```

*Note: If you already cloned it without submodules, run `git submodule update --init --recursive` inside the pack directory.*

### 2. Configuration
Run the initialization script to link configurations:

```bash
cd ~/.vim/pack
bash init.bash
```

### 3. Required System Packages
To enable full functionality for all plugins (like fuzzy search and status icons), install the following:

```bash
# Ubuntu/Debian
sudo apt install exuberant-ctags powerline fzf silversearcher-ag

# Fedora/RHEL
sudo dnf install ctags-etags vim-powerline fzf the_silver_searcher
```

---

### Restart it

|![vim_packpng](vim_pack.png)|
| :---: |
|**Figure 1** : VIM screen with the pack configuration. |

### Plugins List
* **File Explorer**: [nerdtree](https://github.com/scrooloose/nerdtree), [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
* **Status Bar**: [vim-airline](https://github.com/vim-airline/vim-airline)
* **Terminal**: [vim-floaterm](https://github.com/voldikss/vim-floaterm)
* **Linter**: [ale](https://github.com/dense-analysis/ale)
* **Search**: [fzf.vim](https://github.com/junegunn/fzf.vim)
* **Editing**: [vim-commentary](https://github.com/tpope/vim-commentary), [vim-surround](https://github.com/tpope/vim-surround), [indentLine](https://github.com/Yggdroot/indentLine)
* **Git**: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
* **Others**: [julia-vim](https://github.com/JuliaEditorSupport/julia-vim), [taglist](https://github.com/yegappan/taglist)

---

## Usage and Key Mappings

Detailed instructions on how to use these plugins and a full list of custom key mappings (including the **Backspace** leader key setup) are available here:

**[Detailed Plugin Usage & Key Mappings Guide](./README_PluginUsage.md)**

---

## Maintenance (For Developers)

### How to add a new module
To add a new plugin to your pack configuration:

```bash
# Usage: bash add_mod.bash [BASE_URL] [MODULE_NAME]
bash add_mod.bash https://github.com/junegunn fzf.vim
```

### Update submodules
To update all installed plugins to their latest versions:

```bash
bash submodule_update.bash
```

## References
[1] https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
