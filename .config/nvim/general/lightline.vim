" lightline settings
" ==========================================================================================
let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['close'] ],
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ },
    \ 'component': {
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
    \   'readonly': '%{&filetype=="help"?"":&readonly?"|":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \ },
    \ 'component_visible_condition': {
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())',
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \ },
    \ 'separator': { 'left': '|', 'right': '|' },
    \ 'subseparator': { 'left': '|', 'right': '|' }
    \ }

