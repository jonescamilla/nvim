" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

" Syntax highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fern.vim
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" Theme
Plug 'tomasiser/vim-code-dark'

" TS Syntax
" Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'

" from ben awad
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'

call plug#end()

" fern config
source ~/.config/nvim/fern-config.vim

" general config
source ~/.config/nvim/general-config.vim

" theme config
source ~/.config/nvim/theme-config.vim

" coc config
source ~/.config/nvim/coc-config.vim

" git intergration config
source ~/.config/nvim/git-config.vim

" prettier configuration
source ~/.config/nvim/prettier-config.vim

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

