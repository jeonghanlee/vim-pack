"------------------------------------------------------------
" IBus Input Method Configuration
"------------------------------------------------------------

augroup IBusInputMethod
  autocmd!  " Clear any existing autocommands in this group

  " When entering Insert mode, switch to the Hangul input engine
  autocmd InsertEnter * silent !ibus engine hangul
augroup END
