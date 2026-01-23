" -----------------------------------------------------------
" Plugin Configurations and Mappings
" -----------------------------------------------------------

" --- NERDTree: File Explorer ---
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Open NERDTree automatically if no files are specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDTree with Ctrl+n or Leader+e
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>


" --- vim-airline: Status Bar ---
let g:airline_powerline_fonts = 1


" --- vim-floaterm: Floating Terminal ---
" Ensure F12 and Leader+t work by mapping after Vim initialization
augroup FloatermKeyGroup
  autocmd!
  autocmd VimEnter * nnoremap <silent> <F12> :FloatermToggle<CR>
  autocmd VimEnter * tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
  autocmd VimEnter * nnoremap <silent> <leader>t :FloatermToggle<CR>
  autocmd VimEnter * tnoremap <silent> <leader>t <C-\><C-n>:FloatermToggle<CR>
augroup END


" Map F8 or Leader+y to toggle Taglist
augroup TaglistKeyGroup
  autocmd!
  autocmd VimEnter * nnoremap <silent> <F8> :TlistToggle<CR>
  autocmd VimEnter * nnoremap <silent> <leader>y :TlistToggle<CR>
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
