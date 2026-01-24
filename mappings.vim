" -----------------------------------------------------------
" User-defined Key Mappings
" -----------------------------------------------------------

" Map Y to act like D and C, yanking until the end of line
map Y y$

" Clear search highlighting when pressing Ctrl+L
nnoremap <C-L> :nohl<CR><C-L>

" Copy selected text to system clipboard in Visual mode
vnoremap <C-c> "+y

" Quickly save the file with Ctrl+S (Normal & Insert mode)
" Note: Ensure 'stty -ixon' is in your shell config to prevent freezing
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>a

" Insert current system date and time with F5
nnoremap <F5> :r!date<CR>

" Toggle between 'paste' and 'nopaste' mode using F11
nnoremap <F11> :set paste!<CR>

" --- Window Navigation ---
" Move between split windows using Ctrl + Arrow keys
nnoremap <C-Right> :wincmd l<CR>
nnoremap <C-Up>    :wincmd k<CR>
nnoremap <C-Down>  :wincmd j<CR>

" Terminal mode window navigation
tnoremap <C-Left>  <C-\><C-n>:wincmd h<CR>
tnoremap <C-Right> <C-\><C-n>:wincmd l<CR>
tnoremap <C-Up>    <C-\><C-n>:wincmd k<CR>
tnoremap <C-Down>  <C-\><C-n>:wincmd j<CR>

" --- Leader Key Mappings (Leader is Backspace) ---

" Quickly remove trailing whitespace in the current line
nnoremap <leader>w :s/\s\+$//e<CR>

" Buffer Management: Next, Previous, and Delete buffer
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>
nnoremap <leader>d :bd<CR>

" Fast Editing: Select all text and toggle line numbers
nnoremap <leader>a ggVG
nnoremap <leader>l :set localnumber!<CR>

" Search and replace the word under the cursor globally
nnoremap <leader>r :%s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" Plugin Toggles
nnoremap <leader>t :FloatermToggle<CR>
nnoremap <leader>y :TlistToggle<CR>
nnoremap <leader>e :NERDTreeToggle<CR>

" Function keys support (Alternative)
nnoremap <F12> :FloatermToggle<CR>
tnoremap <F12> <C-\><C-n>:FloatermToggle<CR>
nnoremap <F8> :TlistToggle<CR>

" -----------------------------------------------------------
" Mouse Middle Click Mapping
" -----------------------------------------------------------

" Paste with mouse middle click in Normal and Insert modes
" <MiddleMouse> represents the mouse wheel click.

" "*p pastes from the Primary selection (highlighted text)
" This allows pasting text you just highlighted with the mouse
noremap <MiddleMouse> "*p

" <C-r>* inserts the content of the Primary selection while in Insert mode
inoremap <MiddleMouse> <C-r>*

