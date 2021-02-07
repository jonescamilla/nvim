" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Development Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlight, auto-completion, language servers, ...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" JS Syntax highlighting
Plug 'othree/yajs.vim'

" TS Syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" git integration in gutter (numbers line)
Plug 'airblade/vim-gitgutter'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" comment out blocks or single lines of code
Plug 'preservim/nerdcommenter'

" fern.vim (file tree)
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim' 		" suggested in fern docs
Plug 'lambdalisue/fern-git-status.vim' 		" git integration
Plug 'lambdalisue/glyph-palette.vim' 		" file icons
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" prettier
Plug 'prettier/vim-prettier', {
			\ 'do': 'yarn install',
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 
			\ 	'json', 'graphql', 'markdown', 'vim'],
			\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc. Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" delete pairs - TODO learn shortcuts
Plug 'tpope/vim-surround'

" markdown preview - TODO - only load when an markdown is shown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" lightline - bottom of screen information
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch' " returns name of current branch

" Themes
Plug 'arcticicestudio/nord-vim'

" terminate plugin system
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configuration imports
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" returns the absolute path to files in nvim/
function! Dot(path)
	return '~/.config/nvim/' . a:path
endfunction

" iterate over `config/` and source all files within that end in `.vim`
for file in split(glob(Dot('config/*.vim')), '\n')
	execute "source" file
endfor
