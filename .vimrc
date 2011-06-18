
filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

for module in ['camel_case','coloring','gvim','folding','key-bindings','backup','auto']
 exec 'so' '~/.vim/.vimrc_modules/'.module.'.vim'
endfor

so ~/.vim/bundle/snipmate/snippets/support_functions.vim
 
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

set wildignore=*.swp,*.bak,*.pyc,*.class,target/*

let g:slimv_lisp = '"java -cp '.getcwd().'/blog-0.2.1-standalone.jar clojure.main"' 

" lusty jugler requires this
set hidden
set statusline=%f%h%m%r%=\ %l,%c%V 

" force save on root files
function! ForceSave()
    :w !sudo tee %
endfunction

 


