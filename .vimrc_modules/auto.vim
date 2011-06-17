
" save upon focus lost
au FocusLost * :wa


function! Goformat()
    let regel=line(".")
    %!/opt/go/bin/gofmt
    call cursor(regel, 1)
endfunction
 
" auto indent go files
autocmd Filetype go command! Fmt call Goformat()

" reload vimrc post :w
autocmd! bufwritepost .vimrc source %
