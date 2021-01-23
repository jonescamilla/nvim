" set line numbers in vim
set number
" syntax on
" set new leader
let mapLeader = " "

" remap : to ; for ease of commands
nnoremap ; :
nnoremap : ;
" highlight the line the cursor is currently at
set cursorline

" ignore case when searching in vim
set ignorecase

" inabling mouse support
set mouse=a

" easier way to naviaget between vim panes
nmap <c-up> <C-w><up>
nmap <c-down> <C-w><down>
nmap <c-left> <C-w><left>
nmap <c-right> <C-w><right>

" make around words like normal text editor
nmap <ALT+left> <b>
nmap <ALT+right> <w>

" make the sign column the number coloumn (save space)
set signcolumn=number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2

" always uses spaces instead of tab characters
" set expandtab

" turn of for nerd commenter
filetype plugin on

