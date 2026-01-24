" -----------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------

" --- NERDTree: File Explorer ---
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Open NERDTree automatically if no files are specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Note: Key mappings for NERDTree are in mappings.vim

" --- vim-airline: Status Bar ---
let g:airline_powerline_fonts = 1
" Disable Taglist extension to prevent E565 error
" Airline tries to switch windows to check tags, which causes a crash.
let g:airline#extensions#taglist#enabled = 0


" --- vim-floaterm: Terminal ---
" Automatically close the terminal window when the process exits
let g:floaterm_autoclose = 1

augroup FloatermAutoKill
  autocmd!
  autocmd QuitPre * if winnr('$') == 1 | try | FloatermKill! | catch | endtry | endif
augroup END


" --- ALE (Asynchronous Lint Engine) ---
let g:ale_completion_enabled = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_lint_on_save = 1

" --- fzf.vim (Fuzzy Finder) ---
" Quick file/text search
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>

" --- vim-commentary ---
" Toggle comments with Backspace + /
nmap <leader>/ gcc
vmap <leader>/ gc

" --- indentLine & Gitsigns ---
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

" Frequent updates for Git signs
set updatetime=100
