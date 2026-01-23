"------------------------------------------------------------
" Undo Options
"------------------------------------------------------------

" Enable persistent undo feature
set undofile                " Enable persistent undo

" Specify the directory where undo files will be stored
let undodir = expand('~/.vim/undo//')   " Set the custom undo directory

" Create the undo directory if it doesn't exist
if !isdirectory(undodir)
    call mkdir(undodir, "p") " Create the undo directory
endif

" Optional: Set maximum undo levels
set undolevels=1000         " Limit the number of undos
