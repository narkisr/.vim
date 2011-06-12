" gvim pasting
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y 


" gvim options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
