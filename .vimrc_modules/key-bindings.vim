
nnoremap ; :
let mapleader=","
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-T> :CtrlP<CR>
set pastetoggle=<F2>
nmap <C-f> :call system("firefox ".getreg("\""))<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e ~/.vimrc<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>

nmap <silent> <C-Z> :GundoToggle<CR>
map <leader>f :Ack<Space>

" avoiding the esc key
imap jj <Esc>
" enabling replacing current selected text 
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
vnoremap <C-R> "hy:,$s/<C-r>h//gc<left><left><left>

" easy split navigation http://tinyurl.com/6pj4m4z  
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" navigate to current folder in nerdtree
map <leader>r :NERDTreeFind<cr>
nmap <F8> :TagbarToggle<CR>

" fugitive mappings
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gc :Gcommit<cr>
"vimdiff current vs git head (fugitive extension)
nnoremap <Leader>gd :Gdiff<cr> 
"switch back to current file and closes fugitive buffer
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>
nnoremap <Leader>gp :Git push origin master<cr>


" unite mappings
nnoremap <Leader>lj :Unite buffer<cr>

" zencoding expansion see http://tinyurl.com/a4bn8bg   
let g:user_emmet_leader_key = '<C-Z>'

let g:user_emmet_settings = {
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}
autocmd FileType html,xhtml,tt2,tt2html,css imap <buffer> <Tab> <C-Z>, | imap <buffer> <C-N> <C-Z>n
