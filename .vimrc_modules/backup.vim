set backup
set backupdir=$HOME/vimbackups 
if !isdirectory(&backupdir)
   call mkdir(&backupdir)
endif
