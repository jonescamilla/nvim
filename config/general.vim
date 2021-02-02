" set line numbers in vim
set number

" autosave feature
"let g:workspace_autosave_always = 1
" updatetime=3000

" set new leader (yet to work ;-;)
" let mapLeader = '\<Space>'

" remap : to ; for ease of commands
nnoremap ; :
nnoremap : ;

" highlight the line the cursor is currently at
set cursorline

" search without case sensitivity when searching in vim
set ignorecase

" enable mouse interaction
set mouse=a

" easier way to navigate between vim panes
nmap <C-up> <C-w><up>
nmap <C-down> <C-w><down>
nmap <C-left> <C-w><left>
nmap <C-right> <C-w><right>

" used to drag lines in vim (alt+j, alt+k) - symbols are result of ALT + <key>
nnoremap ˚ :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap ˚ <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .+1<CR>==gi
vnoremap ˚ :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" make the sign column the number column (save space)
set signcolumn=number

" unsure on what these do (pulled from ben awad config) 
" TODO research function
set smarttab
set cindent
set tabstop=2
set shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter - comment out multiple lines of code
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" add space in nerd commenter
let g:NERDSpaceDelims=1

" turn of for nerd commenter
filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp - fuzzy finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', '.dist']
let g:ctrlp_map = '<Leader>p'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

