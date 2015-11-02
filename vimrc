""
"" Pathogen stuff
""

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

""
"" Basic stuff
""

set nocompatible
set relativenumber
set number
set ruler
syntax on
filetype plugin indent on
set encoding=utf-8
set fileformats=unix
set cursorline
set showmode

""
"" Searching
""

set nohlsearch
set incsearch
set ignorecase
set smartcase

""
"" Theme
""

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

""
"" List chars
""

set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:·            " show trailing spaces as dots
set listchars+=nbsp:•             " show nonbreaking space as fat dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when
                                  " character to show in the last column when wrap is
""
"" Statusline
""

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

""
"" Wild settings
""

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Ignore temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

" Treat JSON files like JavaScript
au BufNewFile,BufRead *.json set ft=javascript

" Treat ES6 files like JavaScript
au BufNewFile,BufRead *.es6 set ft=javascript

" Reset SCSS filetype
au BufNewFile,BufRead *.scss set filetype=scss.css

" Treat *.pde and *.ino as Arduino files
au BufNewFile,BufRead *.pde set filetype=arduino
au BufNewFile,BufRead *.ino set filetype=arduino

" Treat *.asm files like nasm
au BufNewFile,BufRead *.asm set filetype=nasm

" Map Cmd+X to close buffer
nmap <D-X> :Bclose<CR>

" Map Cmd+7 to <Leader>c<Space> in normal mode
nmap <D-7> <Leader>c<Space>
" Map Cmd+7 to <Leader>cc in visual mode
vmap <D-7> <Leader>cc

nmap ; :CtrlPBuffer<CR>

" Change <Leader> to ,
let mapleader=","

""
"" No arrows...
""
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

"
" RSpec.vim mappings
"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

""
"" Selecta
""
" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

" Find all files in all non-dot directories starting in the working directory.
" Fuzzy select one of those. Open the selected file with :e.
nnoremap <leader>f :call SelectaCommand("find * -type f", "", ":e")<cr>
