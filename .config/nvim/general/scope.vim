let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars=150

noremap <silent> <c-j> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-k> :call smooth_scroll#down(&scroll, 0, 4)<CR>