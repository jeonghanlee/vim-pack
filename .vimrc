"------------------------------------------------------------
" Main Vim configuration file
"------------------------------------------------------------

" Disable compatibility with Vi for better features
set nocompatible

" Enable filetype detection, indent, and plugins
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Source additional configuration files
source ~/.vim/vim-pack/options.vim
source ~/.vim/vim-pack/plugins.vim
source ~/.vim/vim-pack/mappings.vim
"source ~/.vim/vim-pack/ibus.vim
source ~/.vim/vim-pack/ui.vim
source ~/.vim/vim-pack/indent.vim
source ~/.vim/vim-pack/undo.vim
