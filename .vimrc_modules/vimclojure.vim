let g:clj_fmt_autosave = 0

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
au Filetype clojure nmap rr :Require<cr>

