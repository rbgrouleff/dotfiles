" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

" Hit S in command mode to save file
noremap S :w<CR>

" In command mode C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" Move by screen lines instead of file lines
noremap k gk
noremap j gj

" Un-highlight search
nnoremap <leader><leader> :noh<CR>

" Center next matched string on the screen
nnoremap n nzz
nnoremap N Nzz

" Open URL from this line (OS X only)
"map <leader>u :call OpenURL()<CR>

" Create a split on the given side
nmap <leader><left>  :leftabove  vsp<CR>
nmap <leader><right> :rightbelow vsp<CR>
nmap <leader><up>    :leftabove  sp<CR>
nmap <leader><down>  :rightbelow sp<CR>

" Tab/shift-tab to indent/outdent in visual mode.
 vnoremap <Tab> >gv
 vnoremap <S-Tab> <gv

 " Keep selection when indenting/outdenting.
 vnoremap > >gv
 vnoremap < <gv
