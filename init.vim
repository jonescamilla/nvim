" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

" Syntax highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fern.vim
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim' " suggested in fern docs
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" Theme
Plug 'tomasiser/vim-code-dark'

" TS Syntax
Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'
"
" from ben awad
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'preservim/nerdcommenter'

" lightline (disabled because it cannot be disabled for fern 🌿)
" Plug 'itchyny/lightline.vim'
" Plug 'itchyny/vim-gitbranch'

call plug#end()

" general config
source ~/.config/nvim/config/general.vim

" fern config
source ~/.config/nvim/config/fern.vim

" theme config
source ~/.config/nvim/config/theme.vim

" coc config
source ~/.config/nvim/config/coc.vim

" git intergration config
source ~/.config/nvim/config/git.vim

" terminal configuration
source ~/.config/nvim/config/terminal.vim

" prettier configuration (currently nothing)
source ~/.config/nvim/config/prettier.vim

" lightline configuration
" source ~/.config/nvim/config/lightline.vim

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<Leader>p'

