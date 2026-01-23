" -----------------------------------------------------------
" UI Settings
" -----------------------------------------------------------

" Enable mouse support in all modes (Normal, Insert, Visual, etc.)
set mouse=a

" Set font for GUI versions of Vim (e.g., gVim)
set guifont=Hack\ Nerd\ Font:h14

" Display absolute line numbers on the left
set number

" Always display the status line (2: always, 1: only if multiple windows)
set laststatus=2

" Increase the height of the command-line area for better visibility of messages
set cmdheight=2

" -----------------------------------------------------------
" Whitespace Visibility (List Mode)
" -----------------------------------------------------------

" Define characters to show for invisible whitespace
" eol: end of line, tab: indentation, extends/precedes: long lines
set listchars=eol:¶,tab:\|_,extends:>,precedes:<,conceal:*,nbsp:·

" Enable 'list' mode to show the characters defined above
set list
