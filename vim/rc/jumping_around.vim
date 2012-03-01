" Adapted from https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction

function! FindMatchingFileInFilesystem(file_name)
  let new_file      = a:file_name
  let new_file      = substitute(new_file, '^.*/', '', '')
  let possible_file = system("find . -name " . new_file)
  let new_file      = substitute(possible_file, '^.\/', '', '')
  return new_file
endfunction

function! RelatedSpecFile(current_file)
  let new_file = a:current_file
  let in_lib = match(new_file, '^lib/') != -1
  if in_lib
    let new_file = substitute(new_file, '^lib/', '', '')
  endif
  let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
  let new_file = 'spec/' . new_file
  if !filereadable(new_file)
    let new_file = FindMatchingFileInFilesystem(new_file)
  endif
  return new_file
endfunction

function! RelatedProductionFile(current_file)
  let new_file = a:current_file
  let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
  let new_file = substitute(new_file, '^spec/', 'lib/', '')
  if !filereadable(new_file)
    let new_file = FindMatchingFileInFilesystem(new_file)
  endif
  return new_file
endfunction

function! AlternateForCurrentFile()
  let current_file = expand("%")
  let in_spec = match(current_file, '^spec/') != -1
  if in_spec
    let new_file = RelatedProductionFile(current_file)
  else
    let new_file = RelatedSpecFile(current_file)
  endif
  return new_file
endfunction

nnoremap <leader>. :call OpenTestAlternate()<cr>
nnoremap <leader>v. :vsplit<cr> :call OpenTestAlternate()<cr>

map <leader>gl :CtrlP lib<cr>
map <leader>gp :CtrlP public<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gt :CtrlPTag<cr>
map <leader>f :CtrlP %%<cr>
