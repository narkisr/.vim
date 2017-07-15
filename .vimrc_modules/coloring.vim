" Coloring settings
au BufNewFile,BufRead *.gant  setf groovy 
au BufNewFile,BufRead *.gradle  setf groovy 
au BufRead,BufNewFile *.viki set ft=viki 
au BufRead,BufNewFile *.edn  set ft=clojure
au BufRead,BufNewFile *.eex set ft=html
" au BufNewFile,BufRead *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs,*.html set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
highlight SignColumn guibg=darkgrey
highlight CursorLine guibg=lightblue ctermbg=lightgray
so ~/.vim/syntax/srt.vim

if has("gui_running")
    set background=dark
    colorscheme solarized
elseif &t_Co >= 256 
    " colorscheme solarized
    colorscheme railscasts
endif


