" Adapted from https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  echo current_file
  let in_lib = match(current_file, '^lib/') != -1
  if going_to_spec
    if in_lib
      let new_file = substitute(new_file, '^lib/', '', '')
    endif
    let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', 'lib/', '')
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>
