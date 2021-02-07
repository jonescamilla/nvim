"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" disable show at bottom (--insert--)
set noshowmode


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" custom configuration for lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'gitbranch', 'modified'] ],
			\ 	'right': [], 
      \ },
			\ 'inactive': {
			\ 	'left': [ ['filename']],
			\ 	'right': [],
			\ },
			\ 'component_function': {
			\ 	'gitbranch': 'LightlineGit',
			\ 	'mode' : 'LightlineMode',
			\ 	'filename' : 'LightlineTruncatedFileName'
			\ },
      \ }

" not sure what these do (pulled from lightline docs)
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ignore all necessary and append branch name with a branch indicator
function! LightlineGit()
	let l:branchName = gitbranch#name()
	return IsIgnored() ? '' 
				\ : l:branchName == '' ? '' 
				\ : l:branchName . ' ⎇ ' 
endfunction

" ignore all necessary and show mode 
function! LightlineMode()
  return IsFern() ? '' : lightline#mode()
endfunction

" ignore all necessary and show path from file name w/ dynamic shortening
function! LightlineTruncatedFileName()
	let l:filePath = expand('%')
	return IsIgnored() ? '' 
				\ : pathshorten(l:filePath)

	" logic specific to shortening path based on window size
	" \ : winwidth(0) > 100 ? l:filePath 
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" helper Lightline functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" returns truthy if either condition is met
function IsIgnored()
	return IsFern() || IsTerm() ? 1 : 0
endfunction

" return truthy if the filetype is 'fern'
function IsFern()
	return &filetype ==# 'fern' ? 1 : 0
endfunction

" return truthy if the filename is 'fish'
function IsTerm()
	return get(split(expand('%t'), '/'), -1, '') == 'fish' ? 1 : 0
endfunction
