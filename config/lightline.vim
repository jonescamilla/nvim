" disable show at bottom (--insert--)
set noshowmode

" custom configuration for lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ],
			\ 	'right': [], 
      \ },
			\ 'inactive': {
			\ 	'left': [ ['filename']],
			\ 	'right': [],
			\ },
			\ 'component_function': {
			\ 	'gitbranch': 'gitbranch#name'
			\ },
      \ }

