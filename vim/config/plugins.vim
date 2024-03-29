""
"" Pathogen stuff
""

filetype off
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

"
" RSpec.vim mappings
"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"
" Rails.vim mappings
"
map <Leader>z :.Rails<CR>

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

" BClose
"
nnoremap <silent> <leader>bd :Bclose<CR>

" CtrlP

nmap ; :CtrlPBuffer<CR>

" Files to skip
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*

" Syntastic
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_scss_sass_quiet_messages = {
      \ "regex": 'File to import not found or unreadable', }
let g:syntastic_eruby_ruby_quiet_messages =
      \ {'regex': ['possibly useless use of a variable in void context',
      \            'possibly useless use of \* in void context',
      \            'possibly useless use of + in void context',
      \            'possibly useless use of - in void context',]
      \ }

" Configure Ack.vim to use ag instead of ack
let g:ackprg = 'ag --vimgrep --smart-case'
let g:snipMate = { 'snippet_version' : 1 }
