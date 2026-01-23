"------------------------------------------------------------
" User-defined Key Mappings
"------------------------------------------------------------

" Set Leader key to Backspace
let mapleader = "\<BS>"

" Map Y to act like D and C, i.e., yank until the end of line
map Y y$

" Clear search highlighting when pressing <C-L>
nnoremap <C-L> :nohl<CR><C-L>

" Copy selected text to system clipboard in visual mode
vnoremap <C-c> "+y         " Copy to system clipboard

" Quickly save the file with <C-S>
nnoremap <C-S> :w<CR>

" Insert current date/time with <F5>
nnoremap <F5> :r!date<CR>

" Toggle between 'paste' and 'nopaste' mode using <F11>
nnoremap <F11> :set paste!<CR>

" Move between splits easily with <Ctrl> + arrow keys
nnoremap <C-Left> :wincmd h<CR>
nnoremap <C-Right> :wincmd l<CR>
nnoremap <C-Up> :wincmd k<CR>
nnoremap <C-Down> :wincmd j<CR>

" Quickly remove trailing whitespace in the current line
nnoremap <leader>w :%s/\s\+$//<CR>
