
" save upon focus lost
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

autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

