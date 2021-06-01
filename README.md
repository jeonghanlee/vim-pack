# VIM plugins

So many struggles to figure out how to setup the VIM plugins manually. Here is my struggle for them.

## Procedure

### Create `.vim`

```bash
mkdir ~/.vim
cd ~/.vim
git clone https://github.com/jeonghanlee/pack
cd pack
git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree
git submodule add https://github.com/Xuyuanp/nerdtree-git-plugin plugins/start/nerdtree-git-plugin
git submodule add https://github.com/rakr/vim-one.git colors/start/one
git submodule add https://github.com/vim-airline/vim-airline plugins/start/vim-airline
git commit -m "..."
git push
```

### Restart it

|![vim_packpng](vim_pack.png)|
| :---: |
|**Figure 1** : VIM screen with the pack configuration. |

## References
[1] https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
