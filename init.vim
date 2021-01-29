" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

" Syntax highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fern.vim (file tree)
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim' " suggested in fern docs
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim' " file icons
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim'
" Plug 'abnt713/vim-hashpunk'
" Plug 'phanviet/sidonia'
" Plug 'logico/typewriter-vim'
" Plug 'kadekillary/skull-vim'
" Plug 'karoliskoncevicius/oldbook-vim'

" JS Syntax
Plug 'othree/yajs.vim'

" TS Syntax
Plug 'HerringtonDarkholme/yats.vim'
" (trash w/ codedark)
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

" git
Plug 'airblade/vim-gitgutter'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" comment out blocks or single lines of code
Plug 'preservim/nerdcommenter'

" lightline (disabled because it cannot be disabled for fern 🌿)
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch' " returns name of current branch

" terminate plugin system
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
source ~/.config/nvim/config/lightline.vim
