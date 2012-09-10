
syntax on
filetype plugin indent on
call pathogen#infect()

for module in ['camel_case','coloring','gvim','folding','key-bindings','backup','auto','syntastic','vimclojure']
  exec 'so' '~/.vim/.vimrc_modules/'.module.'.vim'
endfor
 
so ~/.vim/bundle/snipmate/snippets/support_functions.vim

set tabstop=6
set smarttab
set laststatus=2

set backspace=indent,eol,start " allow backspacing over everything in insert mode
" set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on " autoindenting
set shiftwidth=2  " number of spaces to use for " autoindenting
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

set wildignore=*.swp,*.bak,*.pyc,*.class,target/*

let g:slimv_swank_clojure = '! xterm -e lein swank &'"

" lusty jugler requires this
set hidden
set statusline=%f%h%m%r%=\ %l,%c%V 

" force save on root files
function! ForceSave()
    :w !sudo tee %
endfunction

let g:Powerline_symbols = 'fancy'
