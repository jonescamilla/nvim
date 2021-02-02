" set nvim theme
colorscheme nord

" adjust colors for terminals properly
set termguicolors

" sets the background transparent
" hi Normal guibg=NONE ctermbg=NONE
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! VertSplit ctermbg=NONE guibg=NONE gui=NONE cterm=NONE

" remove tilde '~' from empty lines and replace with space ' '
set fcs=eob:\ 
