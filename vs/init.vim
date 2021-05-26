
call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-surround'

call plug#end()

set ignorecase

" change the output of `U` to redo
nmap U <C-r>

" move up one subline instead of one 'numbered' line
nnoremap <up> gk
nnoremap <down> gj

" remap : to ; for ease of commands
nnoremap ; :
nnoremap : ;

" used to drag lines in vim (alt+j, alt+k) - symbols are result of ALT + <key>
nnoremap ˚ :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap ˚ <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .+1<CR>==gi
vnoremap ˚ :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv
