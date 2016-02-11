set encoding=utf-8                    " Set the encoding explicitly
set fileformats=unix                  " Set unix file format

syntax on                             " Syntax highlighting
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set backspace=indent,eol,start        " backspace through everything in insert mode
set fillchars=vert:\                  " No pipes in vertical split separators
set laststatus=2                      " Always show status bar
set listchars=nbsp:·,tab:▸\ ,trail:·  " Configure how invisibles appear
" set listchars=tab:\ \,trail:·,nbsp:•
set list                              " Show invisible characters
set modelines=3                       " Use modeline overrides
set nojoinspaces                      " 1 space, not 2, when joining sentences
set number                            " Show gutter with line numbers
set relativenumber                    " Use relative line numbering
set ruler                             " Show line number of cursor line
set cursorline                        " Highlight the screen line of the cursor
set scrolloff=1                       " Minimum number of lines to always show above/below the caret
set showcmd                           " Show partially typed command sequences
" set showmode                          " Show the mode we're in - TODO do I need this?
set visualbell                        " Don't beep
set wildmode=longest,list             " Autocompleting files: prompt, don't autopick
set wrap                              " Soft wrap - TODO: let's try it out
" set nowrap                        " don't wrap lines
" set nocompatible - TODO figure out if I need this...

" Indentation
set expandtab                         " Replace tabs with spaces
set shiftwidth=2                      " Spaces used for autoindent and commands like >>
set softtabstop=2                     " Spaces inserted by <Tab>

" Searching
set gdefault                          " Global search by default (/g turns it off) - TODO: let's try it out
set hlsearch                          " Highlight results - TODO: let's try it out
" set nohlsearch
set incsearch                         " Search-as-you-type
set ignorecase smartcase              " Case insensitive unless we include uppercase

" Can autocomplete CSS classes etc with dashes.
" Also changes the "w" small word motion not to stop at dashes,
" but use https://github.com/henrik/CamelCaseMotion for that.
set iskeyword+=-

" More persistent command history
set history=10000

" Stash backup and swap files
set backupdir^=~/.vim/_backup
set directory^=~/.vim/_tmp

" Reload files without prompting if it has changed on disk
" Will still prompt if there is unsaved text in the buffer
set autoread
" Terminal vim must trigger checks. Do so when switching buffer
" or after 2 seconds (the value of updatetime) of pressing nothing
set updatetime=2000
au WinEnter,BufWinEnter,CursorHold * silent! checktime

" Automatically save changes before switching buffer with some
" commands, like :cnfile.
set autowrite

" Autosave.
" http://vim.wikia.com/wiki/Auto_save_files_when_focus_is_lost
au BufLeave,FocusLost * silent! wa

set exrc   " Enable per-directory .vimrc files.
set secure " Disable unsafe commands in per-directory .vimrc files.
