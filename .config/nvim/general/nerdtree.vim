" NERDTree Settings
" autocmd vimenter * NERDTree

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 37
let g:NERDTreeIgnore = ['^node_modules$', '^.git$', 'yarn.lock', 'package-lock.json']
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeWinPos = "right"
let g:DevIconsEnableFoldersOpenClose = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '▹'
let g:NERDTreeDirArrowCollapsible = '▿'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "⋆",            
    \ "Staged"    : "•",            
    \ "Untracked" : "∘",            
    \ "Dirty"     : "⁖",            
    \ "Clean"     : "✔︎",                   
    \ }

let g:NERDTreeColorMapCustom = {
    \ "Modified"  : "#528AB3",  
    \ "Staged"    : "#538B54",  
    \ "Untracked" : "#BE5849",  
    \ "Dirty"     : "#299999",  
    \ "Clean"     : "#87939A"   
    \ }  

nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" avoid crashes when calling vim-plug functions while the cursor is on the NERDTree window
let g:plug_window = 'noautocmd vertical topleft new'
