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
			\ 	'gitbranch': 'LightlineGit',
			\ 	'filename' : 'LightlineFilename',
			\ 	'mode' : 'LightlineMode'
			\ },
      \ }

function! LightlineGit()
	return &filetype ==# 'fern' ? '' : gitbranch#name()
endfunction

function! LightlineModified()
	return &filetype ==# 'fern' ? '' : lightline#tab#modified()
endfunction

function! LightlineFilename()
  return &filetype ==# 'fern' ? '' : expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

function! LightlineMode()
  return expand('%:t') ==# 'ControlP' ? 'CtrlP' :
				\ &filetype ==# 'fern' ? '' :
        \ lightline#mode()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
