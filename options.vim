" -----------------------------------------------------------
" General Options
" -----------------------------------------------------------

" Allow switching between unsaved buffers
set hidden

" Enable enhanced command-line completion
set wildmenu

" Show partial commands in the status line
set showcmd

" Highlight all matches of the last search pattern
set hlsearch

" Ignore case when searching
set ignorecase

" Switch to case-sensitive search if pattern contains uppercase
set smartcase

" Fix backspace behavior
set backspace=indent,eol,start

" Copy indent from current line
set autoindent

" Keep cursor in same column when jumping lines
set nostartofline

" Enable line numbers
set number
set relativenumber

" Set default encoding
set encoding=utf-8

" -----------------------------------------------------------
" Clipboard Integration
" -----------------------------------------------------------

set clipboard=unnamed,unnamedplus

" Fallback for Linux systems without direct clipboard support
if has('linux') && executable('xclip')
    let g:clipboard = {
          \   'name': 'xclip-custom',
          \   'copy': {
          \      '+': 'xclip -quiet -i -sel clipboard',
          \      '*': 'xclip -quiet -i -sel primary',
          \    },
          \   'paste': {
          \      '+': 'xclip -o -sel clipboard',
          \      '*': 'xclip -o -sel primary',
          \   },
          \   'cache_enabled': 1,
          \ }
endif
