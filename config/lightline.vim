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

" ignore fern and append branch name with a branch indicator
function! LightlineGit()
	return &filetype ==# 'fern' ? '' : gitbranch#name() . ' ⎇ '
endfunction

" ignore fern or show name or show no name
function! LightlineFilename()
  return &filetype ==# 'fern' ? '' : expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

" ignore fern or show mode normally 
function! LightlineMode()
  return &filetype ==# 'fern' ? '' : lightline#mode()
endfunction

" ignore fern and show path from file name w/ dynamic shortening
function! LightlineTruncatedFileName()
	"ignore fern
	if &filetype ==# 'fern'
		return ''
	endif
	" set local variable that holds the path
	let l:filePath = expand('%')
		" if the window is greater than 100 display entire path
    if winwidth(0) > 100
        return l:filePath
		" else shorten the path
    else
        return pathshorten(l:filePath)
    endif
endfunction
