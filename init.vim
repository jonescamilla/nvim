" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

" Syntax highlight, auto-completion, language servers, ...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fern.vim (file tree)
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim' 		" suggested in fern docs for nvim users
Plug 'lambdalisue/fern-git-status.vim' 		" git integration
Plug 'lambdalisue/glyph-palette.vim' 		" file icons
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim'

" JS Syntax hightlighting
Plug 'othree/yajs.vim'

" TS Syntax hightlighting
Plug 'HerringtonDarkholme/yats.vim'

" git integration in gutter (numbers line)
Plug 'airblade/vim-gitgutter'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" comment out blocks or single lines of code
Plug 'preservim/nerdcommenter'

" lightline - TODO disable it for fern 🌿
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch' " returns name of current branch

" delete pairs - TODO learn shortcuts
Plug 'tpope/vim-surround'

" terminate plugin system
call plug#end()

" general nvim configuration
source ~/.config/nvim/config/general.vim

" fern configuration
source ~/.config/nvim/config/fern.vim

" visual configurations
source ~/.config/nvim/config/theme.vim

" conquer of completion configurations
source ~/.config/nvim/config/coc.vim

" git configuration
source ~/.config/nvim/config/git.vim

" terminal configuration
source ~/.config/nvim/config/terminal.vim

" lightline configuration
source ~/.config/nvim/config/lightline.vim
