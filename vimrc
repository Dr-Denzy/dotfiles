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

let g:ruby_path = "~/.rvm/rubies/default/bin"

source $HOME/.vim/pathogen.vim
source $HOME/.vim/miscelaneous.vim
source $HOME/.vim/number.vim
source $HOME/.vim/wrapping.vim
source $HOME/.vim/copypaste.vim
source $HOME/.vim/backups.vim
source $HOME/.vim/looks.vim
source $HOME/.vim/searching.vim
source $HOME/.vim/abbreviations.vim
source $HOME/.vim/githelpers.vim
source $HOME/.vim/autocomplete.vim
source $HOME/.vim/session.vim
source $HOME/.vim/privates.vim
source $HOME/.vim/buffers.vim
source $HOME/.vim/tabularizing.vim
source $HOME/.vim/ruby-blocks.vim
source $HOME/.vim/windows.vim
source $HOME/.vim/jumping_around.vim
source $HOME/.vim/running_tests.vim
