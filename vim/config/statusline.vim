"if has("statusline") && !&cp
"  set laststatus=2  " always show the status bar
"
"  " Start the status line
"  set statusline=%f\ %m\ %r
"  set statusline+=Line:%l/%L[%p%%]
"  set statusline+=Col:%v
"  set statusline+=Buf:#%n
"  set statusline+=[%b][0x%B]
"endif

" %< truncation point
" \  space
" %f relative path to file
" %m modified flag [+] (modified), [-] (unmodifiable) or nothing
" %r readonly flag [RO]
" %y filetype [ruby]
" %= split point for left and right justification
" %-14.( %)  block of fixed width 14 characters
" %l current line
" %c current column
" %V current virtual column as -{num} if different from %c
" %P percentage through buffer
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*%<\ %f\ %m%r%y\ %=%-14.(%l,%c%V%)\ %P\ 
