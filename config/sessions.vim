" let g:auto_session_pre_save_cmds = ["{:exe }"]
"
" function! MakeSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  " if (filewritable(b:sessiondir) != 2)
    " exe 'silent !mkdir -p ' b:sessiondir
    " redraw!
  " endif
  " let b:filename = b:sessiondir . '/session.vim'
  " exe "mksession! " . b:filename
" endfunction

" function! LoadSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  " let b:sessionfile = b:sessiondir . "/session.vim"
  " if (filereadable(b:sessionfile))
    " exe 'source ' b:sessionfile
  " else
    " echo "No session loaded."
  " endif
" endfunction

" Adding automatons for when entering or leaving Vim
" au VimEnter * nested :call LoadSession()
" au VimLeave * :call MakeSession()
