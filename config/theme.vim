" set color theme ("vscode like theme")
colorscheme codedark
" adjust colors for terminals properly
set termguicolors

" sets the background transparent
hi Normal guibg=NONE ctermbg=NONE

" remove tilde '~' from empty lines and replace with space ' '
set fcs=eob:\ 

" fix colors settings in terminal when setting termguicolors (unsure if it
" does something)
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

