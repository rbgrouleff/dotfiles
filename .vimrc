:filetype on

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set cursorline

set list listchars=tab:\ \ ,trail:·,nbsp:•

" au FileType xhtml,xml ru ~/.vim/ftplugin/html/autoclosetag.vim

" Map Cmd+X to close buffer
nmap <D-X> :Bclose<CR>

" Map Cmd+7 to <Leader>c<Space> in normal mode
nmap <D-7> <Leader>c<Space>
" Map Cmd+7 to <Leader>cc in visual mode
vmap <D-7> <Leader>cc

nmap ; :CtrlPBuffer<CR>
