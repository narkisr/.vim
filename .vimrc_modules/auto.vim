" This file contains file detection and other automated actions

" save upon focus lost (only on GVim)
au FocusLost * :wa
au FocusLost * call feedkeys("\<C-\>\<C-n>") " Return to normal mode on FocustLost


function! Goformat()
    let regel=line(".")
    %!/opt/go/bin/gofmt
    call cursor(regel, 1)
endfunction
 
" auto indent go files
autocmd Filetype go command! Fmt call Goformat()

" reload vimrc post :w
autocmd! bufwritepost .vimrc source %

" ruby
autocmd BufRead,BufNewFile *.ruby setlocal filetype=ruby
autocmd BufRead,BufNewFile *.erb setlocal filetype=eruby

