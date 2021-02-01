local cmd = vim.cmd 		-- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn 		-- a call to Vim functions e.g. fn.bufnr()
-- local g = vim.g 		-- a table to access vim global variables

cmd 'packadd paq-nvim' 		-- load the package manager
local paq = require('paq-nvim').paq 		-- a convenient alias
paq {'savq/paq-nvim', opt = true} 		-- paq-nvim manages itself

-- Syntax highlight
paq 'neoclide/coc.nvim'

-- fern (file tree)
paq 'lambdalisue/fern.vim'
paq 'antoinemadec/FixCursorHold.nvim' 		-- suggested in fern docs to nvim users
paq 'lambdalisue/fern-git-status.vim'
paq 'lambdalisue/glyph-palette.vim' 		-- file icons
paq 'lambdalisue/fern-renderer-nerdfont.vim'
paq 'lambdalisue/nerdfont.vim'


-- themes
paq 'tomasiser/vim-code-dark'
paq 'arcticicestudio/nord-vim'

-- JS Syntax
paq 'othree/yajs.vim'

-- TS Syntax
paq 'HerringtonDarkholme/yats.vim'

-- git
paq 'airblade/vim-gitgutter'

-- fuzzy finder
paq 'ctrlpvim/ctrlp.vim'

-- comment out blocks or single lines of code
paq 'preservim/nerdcommenter'

-- lightline - TODO disable in fern
paq 'itchyny/lightline.vim'
paq 'itchyny/vim-gitbranch' 		-- returns name of current branch


require('general')
require('theme')
