set complete=.,w,b,t
" omnicomplete with C-space
imap <c-space> <c-x><c-o>
" line complete with C-M-space
imap <c-S-space> <c-x><c-l>

function! SmartTab()
  " check if at beginning of line
  if col('.') == 1
    return "\<Tab>"
  " check if previous character is whitespace
  elseif strpart( getline('.'), col('.')-2, 1 ) == ' '
    return "\<Tab>"
  else
    if &omnifunc != ''
      " omni-completion
      return "\<C-X>\<C-O>"
    elseif &dictionary != ''
      " dictionary completion
      return "\<C-K>"
    else
      " known-word completion
      return "\<C-N>"
    endif
  endif
endfunction
inoremap <Tab> <C-R>=SmartTab()<cr>
