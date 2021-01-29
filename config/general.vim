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

" make around words like normal text editor (currently doesn't work [probably
" for the better])
nmap <ALT+left> <b>
nmap <ALT+right> <w>

" used to drag lines in vim (alt+j, alt+k)
nnoremap ˚ :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap ˚ <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .+1<CR>==gi
vnoremap ˚ :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" make the sign column the number column (save space)
set signcolumn=number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" add space in nerd commenter
let g:NERDSpaceDelims=1

" turn of for nerd commenter
filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" mapping for suggestion (pulled from coc-spell-checker) DUPLICATE IN coc.vim
" vmap <leader>a <Plug>(coc-codeaction-selected)
" nmap <leader>a <Plug>(coc-codeaction-selected)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', '.dist']
let g:ctrlp_map = '<Leader>p'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

