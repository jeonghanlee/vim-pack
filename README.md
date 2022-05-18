# VIM plugins

So many struggles to figure out how to setup the VIM plugins using built-in package management. Here is my struggle for them. VIM 8 is required.

## Procedure

### How to build this

```bash
mkdir ~/.vim
cd ~/.vim
git clone https://github.com/jeonghanlee/vim-pack pack
cd pack
git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree
git submodule add https://github.com/Xuyuanp/nerdtree-git-plugin plugins/start/nerdtree-git-plugin
git submodule add https://github.com/rakr/vim-one.git colors/start/one
git submodule add https://github.com/vim-airline/vim-airline plugins/start/vim-airline
git submodule add https://github.com/voldikss/vim-floaterm plugins/start/vim-floaterm
git submodule add https://github.com/vim-syntastic/syntastic plugins/start/syntastic
git submodule add https://github.com/JuliaEditorSupport/julia-vim.git plugins/start/julia-vim
git commit -m "..."
git push
```

### How to configure it

```bash
mkdir ~/.vim
cd ~/.vim
git clone https://github.com/jeonghanlee/vim-pack
cd pack
bash init.bash
```
### Required packages

powerline package is required


### Restart it

|![vim_packpng](vim_pack.png)|
| :---: |
|**Figure 1** : VIM screen with the pack configuration. |

### Plugins List

* nerdtree: https://github.com/scrooloose/nerdtree
* nerdtree-git-plugin: https://github.com/Xuyuanp/nerdtree-git-plugin
* one: https://github.com/rakr/vim-one.git
* vim-airline: https://github.com/vim-airline/vim-airline
* vim-floaterm: https://github.com/voldikss/vim-floaterm
* syntastic: https://github.com/vim-syntastic/syntastic
* spelunker: https://github.com/kamykn/spelunker.vim
* popup-menu: https://github.com/kamykn/spelunker.vim
* julia-vim: https://github.com/JuliaEditorSupport/julia-vim

### Update submodules 

```bash
bash submodule_update.bash
```


## References
[1] https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
