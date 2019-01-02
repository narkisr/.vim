let g:clj_fmt_autosave = 1

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
au Filetype clojure nmap rr :Require<cr>

