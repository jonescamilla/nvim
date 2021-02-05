"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set line numbers in vim
set number

" change the output of `U` to redo
nmap U <C-r>

" set vim to use an undo file
set undofile

" highlight the line the cursor is currently at
set cursorline

" search without case sensitivity in vim
set ignorecase

" enable mouse interaction
set mouse=a

" make the sign column the number column (save space)
set signcolumn=number

" the numbers of spaces that a `<Tab>` in the file stands for
set tabstop=2

" ¯\_(ツ)_/¯ I have no clue what these REALLY mean/do from quick look at docs
set smarttab
set cindent
set shiftwidth=2 

" autosave feature
"let g:workspace_autosave_always = 1
" updatetime=3000


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap : to ; for ease of commands
nnoremap ; :
nnoremap : ;

" easier way to navigate between vim panes/buffers
" Ctrl <arrow keys> -> Ctrl w + <arrow keys>
" (I have arrow keys as ijkl in keyboard layer)
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

" set new leader key (yet to find a better key to use than \)
" let mapleader = ' '

" Navigate the complete menu items like Ctrl + n / Ctrl + p would
" inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
" inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" select the complete menu item like Ctrl + y would
" inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
" inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

" cancel the complete menu item like Ctrl + e would
" inoremap <expr> <Left> pumvisible() ? "<C-e>": "<Left>"


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
