set backup
set backupdir=$HOME/vimbackups 
set directory=$HOME/vimswap
if !isdirectory(&backupdir)
   call mkdir(&backupdir)
endif

if !isdirectory(&directory)
   call mkdir(&directory)
endif
