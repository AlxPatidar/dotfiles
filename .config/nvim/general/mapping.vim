" FZF key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

nnoremap <silent> <C-P> :fzf<CR>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" give space in normal mode
nnoremap ss i<space><esc>
" change mode using 
inoremap jk <Esc>
inoremap jj <Esc>

nmap <C-b> :NERDTreeToggle<CR>
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" tab change using clt + -> and clt + <-  
" nnoremap <C-w> :tabclose<CR>
nnoremap <c-left> :tabprevious<cr>
nnoremap <c-right> :tabnext<cr>
" rename variable on change
nmap <F2> <Plug>(coc-rename)

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap <C-I> :Prettier<cr>

" comment and uncomment
nnoremap <C-C> :call NERDComment(0,"toggle")<CR>
vnoremap <C-C> :call NERDComment(0,"toggle")<CR>

" nnoremap <C-f> :FZF<CR>
nnoremap <C-f> :Ag<CR>

nnoremap tn :tabedit<CR>

noremap <leader>sv :so $MYVIMRC<CR>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"copy to clip board and past from clipboard
vnoremap <C-c> "+y
map <C-v> "+P

" set local spell
map <F6> <Esc>:setlocal spell spelllang=en<CR>

" Default mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key = '<C-d>'


