
nnoremap ; :
let mapleader=","
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-T> :CommandT<CR>
set pastetoggle=<F2>
nmap <C-f> :call system("firefox ".getreg("\""))<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>

nnoremap <C-h> :GundoToggle<CR>
map <leader>f :Ack<Space>

" avoiding the esc key
imap jj <Esc>
" enabling replacing current selected text 
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" easy split navigation http://tinyurl.com/6pj4m4z  
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
