" let g:lsc_auto_map = v:true
"
"
" yank/paste to/from the OS clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>Y "+Y
noremap <silent> <leader>p "+p
noremap <silent> <leader>P "+P


" use <leader>c to replace text without yanking replaced text
nnoremap <silent> <leader>c "_c
vnoremap <silent> <leader>c "_c

" use <leader>d to delete a line without adding it to the yanked stack
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d

" temporarily disable search highlighting
nnoremap <silent> <leader><Space> :nohlsearch<CR>:match none<CR>:2match none<CR>:3match none<CR>

" highlight all instances of the current word where the cursor is positioned
nnoremap <silent> <leader>hs :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>

" use <leader>h1, <leader>h2, <leader>h3 to highlight words in different colors
nnoremap <silent> <leader>h1 :highlight Highlight1 ctermfg=0 ctermbg=226 guifg=Black guibg=Yellow<CR> :execute 'match Highlight1 /\<<C-r><C-w>\>/'<cr>
nnoremap <silent> <leader>h2 :highlight Highlight2 ctermfg=0 ctermbg=51 guifg=Black guibg=Cyan<CR> :execute '2match Highlight2 /\<<C-r><C-w>\>/'<cr>
nnoremap <silent> <leader>h3 :highlight Highlight3 ctermfg=0 ctermbg=46 guifg=Black guibg=Green<CR> :execute '3match Highlight3 /\<<C-r><C-w>\>/'<cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>
