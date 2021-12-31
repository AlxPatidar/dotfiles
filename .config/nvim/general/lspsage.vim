" -- rename
" -- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
nnoremap <silent><F2> <cmd>lua require('lspsaga.rename').rename()<CR>

"  -- show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"-- or use command
nnoremap <silent>K :Lspsaga hover_doc<CR>

" -- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" -- preview definition
" nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" -- or use command
" nnoremap <silent> gd :Lspsaga preview_definition<CR>

highlight link LspSagaFinderSelection Search
" or
" highlight link LspSagaFinderSelection guifg='#ff0000' 
" highlight link LspSagaFinderSelection guibg='#00ff00' 
" highlight link LspSagaFinderSelection gui='bold'

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF
