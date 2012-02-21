"""""""""""""""""""""""""""""""""
" Basics
"""""""""""""""""""""""""""""""""
set nocompatible                  " We're on vim, not vi
filetype plugin indent on         " indent files, ftplugins
runtime macros/matchit.vim        " Enable matchit
set wildmode=list:longest         " bash like command line tab completion
set wildignore=*.o,*.obj,*~,*.swp " ignore when tab completing:
set backspace=indent,eol,start    " Intuitive backspacing in insert mode
set shortmess=atI
set visualbell                    " get rid of the BEEP
set autowrite                     " Automatically save before commands like :next
set showcmd                       " display incomplete commands

let mapleader = " "

for rc_file in split(glob('~/.vim/rc/*.vim'), '\n')
  exec 'source ' .  rc_file
endfor
