let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on
set termguicolors
set cursorline
syntax enable
set t_Co=256
set background=dark


" =====================================
" let g:gruvbox_contrast_dark='hard'
" let base16colorspace=256 

" =====================================
colorscheme nightfly                                            " Night Fly theme
" colorscheme pencil                                              " pencil
" colorscheme molokai
" colorscheme base16-default-dark                                 " Base 16 dark theme
" colorscheme gruvbox                                             " Gruvbox theme
" colorscheme solarized8                                          " solarization dark color
" colorscheme onehalfdark                                         " one half light / one half dark theme
" colorscheme palenight                                           " Pale Night
" colorscheme nord                                                " nord thme  
" colorscheme PaperColor
" colorscheme cobalt
" colorscheme molokai
" colorscheme hydrangea

"====== vim-colorschemes ====== "
" colorscheme deus_ex
" colorscheme mouse
" colorscheme mouse_v2
" colorscheme pencil
" colorscheme blade_runner
" colorscheme silenthill
" colorscheme blade_runner

" ====== tomasiser/vim-code-dark =======
" colorscheme codedark
" colorscheme  dracula 
" ====== tommorow =============
" colorscheme Tomorrow-Night-Blue
" colorscheme Tomorrow-Night-Bright
" Tomorrow-Night-Eighties
" Tomorrow-Night
" Tomorrow
"
"colorscheme tokyonight
"colorscheme base16-oceanicnext
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
"=====================================


let g:lightline = {'colorscheme' : 'tokyonight'}
" let g:lightline = { 'colorscheme': 'nightfly' }
" let g:lightline = { 'colorscheme': 'onehalfdark' }
" let g:lightline = { 'colorscheme': 'palenight' }
" let g:lightline = {
"      \ 'colorscheme': 'hydrangea',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"":""}',
"      \ },
"      \ 'separator':    { 'left': '', 'right': '' },
"     \ 'subseparator': { 'left': '', 'right': '' },
"      \ }


