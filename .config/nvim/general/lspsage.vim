" -- rename
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
" -- or command
nnoremap <silent>gr :Lspsaga rename<CR>
" -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`


"  -- show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"-- or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>

" -- scroll down hover doc or scroll in definition preview
" nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" -- scroll up hover doc
" nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" -- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" -- or use command
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" -- preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" -- or use command
nnoremap <silent> gd :Lspsaga preview_definition<CR>


highlight link LspSagaFinderSelection Search
" or
" highlight link LspSagaFinderSelection guifg='#ff0000' 
" highlight link LspSagaFinderSelection guibg='#00ff00' 
" highlight link LspSagaFinderSelection gui='bold'

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
