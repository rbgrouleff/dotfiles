" Change <Leader> to ,
let mapleader=","

runtime config/plugins.vim
runtime config/settings.vim
"source ~/.dotfiles/vim/config/statusline.vim
runtime config/statusline.vim
runtime config/mappings.vim

" Treat JSON files like JavaScript
"au BufNewFile,BufRead *.json set ft=javascript

" Treat ES6 files like JavaScript
"au BufNewFile,BufRead *.es6 set ft=javascript

" Reset SCSS filetype
"au BufNewFile,BufRead *.scss set filetype=scss.css

" Treat *.pde and *.ino as Arduino files
"au BufNewFile,BufRead *.pde set filetype=arduino
"au BufNewFile,BufRead *.ino set filetype=arduino

" Treat *.asm files like nasm
"au BufNewFile,BufRead *.asm set filetype=nasm
