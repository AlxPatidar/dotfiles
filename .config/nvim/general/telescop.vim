" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ch <cmd>Telescope command_history<cr>

nnoremap <C-t> <cmd>Telescope file_browser<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>

" Git sort cut for git operation
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>

nnoremap <C-f> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>

highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item
highlight TelescopeSelectionCaret guifg=#CC241D          " Selection caret
highlight TelescopeMultiSelection guifg=#928374          " Multisections
highlight TelescopeNormal         guibg=#00000           " Floating windows created by telescope

" Border highlight groups
highlight TelescopeBorder         guifg=#ffffff
highlight TelescopePromptBorder   guifg=#ffffff
highlight TelescopeResultsBorder  guifg=#ffffff
highlight TelescopePreviewBorder  guifg=#ffffff

" Highlight characters your input matches
highlight TelescopeMatching       guifg=blue

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=red

