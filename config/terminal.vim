" variables used in Term_toggle
let g:term_buf = 0
let g:term_win = 0
" toggles terminal based on certain conditions and accepts height
function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
				" resize to passed height
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
						" set the terminal to not have line numbers
						setlocal nonu
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" variable for adjusting terminal height
let term_size=15

" allow for terminal toggle
nnoremap <Leader>t :call Term_toggle(term_size)<cr>
tnoremap <Leader>t <C-\><C-n>:call Term_toggle(term_size)<cr>

