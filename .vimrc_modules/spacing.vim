" Removes superfluous white space from the end of a line
function! RemoveWhiteSpace()
   :%s/\s*$//g
    :'^
    "`.
endfunction

" Color trailing white spaces
:highlight ws ctermbg=red guibg=red
:match ws /\s\+$/
