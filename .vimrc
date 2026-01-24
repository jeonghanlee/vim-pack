" -----------------------------------------------------------
" Main Vim Configuration File
" -----------------------------------------------------------

" Disable compatibility with old Vi
set nocompatible

" [CRITICAL] Define Leader Key as Backspace immediately
let mapleader = "\<BS>"

" Detect the actual directory of this script
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
" Using absolute paths derived from s:config_dir

execute 'source ' . s:config_dir . '/options.vim'
execute 'source ' . s:config_dir . '/mappings.vim'
execute 'source ' . s:config_dir . '/ui.vim'
execute 'source ' . s:config_dir . '/indent.vim'
execute 'source ' . s:config_dir . '/undo.vim'

" Load IBus configuration (Previously missing)
"if filereadable(s:config_dir . '/ibus.vim')
"  execute 'source ' . s:config_dir . '/ibus.vim'
"endif

" [Fixed] Load plugin settings BEFORE loading plugins
" This ensures variables (like ALE fixers or Airline fonts) are read
" before the plugins initialize.
if filereadable(s:config_dir . '/plugins.vim')
  execute 'source ' . s:config_dir . '/plugins.vim'
endif

" Force Vim to load plugins from pack/*/start
packloadall
