
filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

so ~/.vim/.vimrc_modules/camel_case.vim
so ~/.vim/.vimrc_modules/coloring.vim
so ~/.vim/.vimrc_modules/gvim.vim
so ~/.vim/.vimrc_modules/folding.vim
so ~/.vim/.vimrc_modules/key-bindings.vim
 
syntax on
filetype plugin indent on
set tabstop=6
set smarttab
set autoindent
" set expandtab
set laststatus=2

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on " autoindenting
set shiftwidth=4  " number of spaces to use for " autoindenting
set shiftround    " use multiple of shiftwidth when " indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, "    case-sensitive otherwise
set hlsearch      " highlight search terms

let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1 

" Search Options
set incsearch

" actionscript 
autocmd BufRead *.as set filetype=actionscript

" This enables copy and pasting from the system clipboard
" vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

set wildignore=*.swp,*.bak,*.pyc,*.class,target/*

let g:slimv_lisp = '"java -cp '.getcwd().'/blog-0.2.1-standalone.jar clojure.main"' 


" lusty jugler requires this
set hidden
" reload vimrc post :w
autocmd! bufwritepost .vimrc source %
" enable neocomplete on startup
"let g:neocomplcache_enable_at_startup = 1 
set statusline=%f%h%m%r%=\ %l,%c%V 

" force save on root files
function! ForceSave()
    :w !sudo tee %
endfunction


function! Goformat()
    let regel=line(".")
    %!/opt/go/bin/gofmt
    call cursor(regel, 1)
endfunction
  
autocmd Filetype go command! Fmt call Goformat()

" save upon focus lost
au FocusLost * :wa

