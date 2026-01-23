" -----------------------------------------------------------
" Main Vim Configuration File
" -----------------------------------------------------------

" Disable compatibility with old Vi
set nocompatible

" Detect the actual directory of this script, resolving symbolic links
" This ensures that if ~/.vimrc links to ~/.vim/pack/.vimrc,
" s:config_dir becomes /home/jeonglee/.vim/pack

let s:actual_config_path = resolve(expand('<sfile>:p'))
let s:config_dir = fnamemodify(s:actual_config_path, ':h')

" Standard Vim 8 package path setup
if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

" --- Source Modular Configurations ---
" Using absolute paths derived from s:config_dir to prevent path errors
execute 'source ' . s:config_dir . '/options.vim'
execute 'source ' . s:config_dir . '/mappings.vim'
execute 'source ' . s:config_dir . '/ui.vim'
execute 'source ' . s:config_dir . '/indent.vim'
execute 'source ' . s:config_dir . '/undo.vim'

" Force Vim to load plugins immediately from pack/*/start
packloadall

" Load plugin-specific configurations last
if filereadable(s:config_dir . '/plugins.vim')
  execute 'source ' . s:config_dir . '/plugins.vim'
endif
