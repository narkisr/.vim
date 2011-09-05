" Coloring settings
au BufNewFile,BufRead *.gant  setf groovy 
au BufNewFile,BufRead *.gradle  setf groovy 
au BufRead,BufNewFile *.viki set ft=viki 
highlight SignColumn guibg=darkgrey
highlight CursorLine guibg=lightblue ctermbg=lightgray

if has("gui_running")
    set background=dark
    colorscheme solarized
elseif &t_Co >= 256 
    colorscheme railscasts
endif

