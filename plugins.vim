"------------------------------------------------------------
" Plugin Configurations
" Configures plugins loaded by Vim's native package manager.
"------------------------------------------------------------

" --- NERDTree & nerdtree-git-plugin ---
" Basic settings for file explorer and git status indicators
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Open NERDTree automatically if no files are specified when starting Vim
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle NERDTree with Ctrl + n
nnoremap <C-n> :NERDTreeToggle<CR>

" --- vim-airline ---
" Enable powerline fonts for a better-looking status bar
let g:airline_powerline_fonts = 1

" --- vim-floaterm ---
" Toggle floating terminal with F12
nnoremap <silent> <F12> :FloatermToggle<CR>

" --- taglist ---
" Close taglist window if it is the only window left
let Tlist_Exit_OnlyWindow = 1
" Toggle taglist window with F8
nnoremap <F8> :TlistToggle<CR>

" --- ALE (Asynchronous Lint Engine) ---
" Modern linter configuration
let g:ale_completion_enabled = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Run linting automatically when saving a file
let g:ale_lint_on_save = 1

" --- fzf.vim (Fuzzy Finder) ---
" Search files using Ctrl + p
nnoremap <C-p> :Files<CR>
" Search text inside files using Ctrl + f (requires Ag or Rg installed)
nnoremap <C-f> :Ag<CR>

" --- vim-commentary ---
" Shortcuts for commenting code:
" 'gcc' to comment/uncomment a single line
" 'gc' in visual mode to comment/uncomment the selection
nmap <leader>/ gcc
vmap <leader>/ gc

" --- indentLine ---
" Visual guide for indentation levels
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239

" --- gitsigns.nvim ---
" Update git indicators in the gutter more frequently
set updatetime=100

" --- julia-vim ---
" No specific configuration needed for basic usage
