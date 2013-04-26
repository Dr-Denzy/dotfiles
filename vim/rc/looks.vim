"""""""""""""""""""""""""""""""""
" Looks
"""""""""""""""""""""""""""""""""
syntax on
set foldmethod=indent
set foldnestmax=3                 " deepest fold level
set nofoldenable                  " don't fold by default
set ruler                         " always show the cursor position
set showmatch                     " show matching brackets.
set mat=5                         " bracket blinking.
set laststatus=2                  " always show status line (not only for multiple windows)
set cursorline                    " highlight cursor line
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
set list                          " show trailing whiteshace and tabs

set t_Co=256
" set background=dark
colorscheme smyck

set numberwidth=4
set relativenumber

match Error /\%80v.\+/
