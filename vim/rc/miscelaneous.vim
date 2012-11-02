" faster viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType asc set fo+=crotqaw
au BufRead,BufNewFile *.less set ft=css syntax=css3
au BufRead,BufNewFile *.scss set ft=css syntax=css3
au BufRead,BufNewFile *.css set ft=css syntax=css3
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_klasses_in_global = 1
let g:rubycomplete_rails = 1
"clojure.vim
let clj_highlight_builtins = 1

nnoremap <Leader>h :nohls<CR><C-L>


nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et " Set two space tabs

set splitbelow                    " Split windows at bottom
set splitright                    " VSplit windows to the right
set ttimeoutlen=50                " Speed up <esc>

" toggle past and nopaste
set pastetoggle=<F7>

" set cursorcolumn on some files
autocmd BufEnter *.haml setlocal cursorcolumn
autocmd BufEnter *.scss setlocal cursorcolumn
autocmd BufEnter *.less setlocal cursorcolumn
autocmd BufEnter *.coffee setlocal cursorcolumn
autocmd BufEnter *.html.erb setlocal cursorcolumn
autocmd BufEnter *.jst setlocal cursorcolumn

" Set ruby syntax for Gemfile
autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby

" go back to normal mode with jk or kj
imap jk <Esc>
imap kj <Esc>

"""""""""""""""""""""""""""""""""
" Other
"""""""""""""""""""""""""""""""""

cnoremap %% <C-R>=expand('%:p:h').'/'<cr>
" Opens an edit command with the path of the currently edited file filled in
map <Leader>e :e %%
map <Leader>s :split %%
" map <Leader>t :tabnew %%

autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb

map <F10> set fo+=crotqaw

" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" switch between last two files
nnoremap <leader><leader> <c-^>
