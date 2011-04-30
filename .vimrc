
filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","
syntax on
filetype plugin indent on
set tabstop=6
set smarttab
set autoindent
" set expandtab
set laststatus=2
set pastetoggle=<F2>

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on " autoindenting
set shiftwidth=4  " number of spaces to use for " autoindenting
set shiftround    " use multiple of shiftwidth when " indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, "    case-sensitive otherwise
set hlsearch      " highlight search terms


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

" gvim pasting
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y 

let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1 

" Search Options
:set incsearch

" xml formate using xmllint
" map <F2> <Esc>:1,$!xmllint --format -<CR>	

" actionscript 
autocmd BufRead *.as set filetype=actionscript

"folding settings
set foldmethod=indent   "fold based on indent

set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-T> :CommandT<CR>
" This enables copy and pasting from the system clipboard
" vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
nmap <C-f> :call system("firefox ".getreg("\""))<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>
set wildignore=*.swp,*.bak,*.pyc,*.class,target/*

let g:slimv_lisp = '"java -cp '.getcwd().'/blog-0.2.1-standalone.jar clojure.main"' 
let g:vikiNameSuffix='viki'
nnoremap ; :

nnoremap <C-h> :GundoToggle<CR>

" lusty jugler requires this
set hidden
" reload vimrc post :w
autocmd! bufwritepost .vimrc source %
" enable neocomplete on startup
"let g:neocomplcache_enable_at_startup = 1 
map <leader>f :Ack<Space>
set statusline=%f%h%m%r%=\ %l,%c%V 

" force save on root files
function! ForceSave()
    :w !sudo tee %
endfunction

let g:vikiOpenFileWith_jpg = '!firefox %{FILE}'

" gvim options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

function! Goformat()
    let regel=line(".")
    %!/opt/go/bin/gofmt
    call cursor(regel, 1)
endfunction
  
autocmd Filetype go command! Fmt call Goformat()

" avoiding the esc key
imap jj <Esc>
" enabling replacing current selected text 
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
" save upon focus lost
au FocusLost * :wa

