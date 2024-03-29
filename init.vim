" if the vscode extension exists only run my vs settings
if exists('g:vscode')
  " vscode extensions
  source '~/.config/nvim/vs/init.vim'
" else run normally
else

" Load vimplug if it isn't
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize plugin system
call plug#begin(stdpath('data') . '/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Development Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlight, auto-completion, spell checker, eslint, prettier
" language servers: typescript, vim, lua, html, css, json
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" JS Syntax highlighting
" Plug 'othree/yajs.vim'
Plug 'jelera/vim-javascript-syntax' 	" better syntax yajs

" TS Syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" Plug 'MaxMEllon/vim-jsx-pretty'

" git integration in gutter (numbers line)
Plug 'airblade/vim-gitgutter'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" comment out blocks or single lines of code
Plug 'preservim/nerdcommenter'

" fern.vim (file tree)
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim' 	" suggested in fern docs
Plug 'lambdalisue/fern-git-status.vim' 	" git integration
Plug 'lambdalisue/glyph-palette.vim' 	" file icons
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" have git blame in the status bar
Plug 'zivyangll/git-blame.vim'

" angular syntax highlighting
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'nvim-treesitter/nvim-treesitter-angular'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc. Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" delete or replace pairs
Plug 'tpope/vim-surround'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 
			\ 'do': 'cd app && yarn install',
			\ 'for': 'markdown',
			\ }

" seamless automatic session management (in lua)
" Plug 'rmagatti/auto-session'

" Plug 'alvan/vim-closetag'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" lightline - bottom of screen information
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch' 	" returns name of current branch

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

" end vs if
endif
