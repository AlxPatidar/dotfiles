-- on yanked show highlight
vim.cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual=true}") -- disabled in visual mode

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})
--
-- vim.cmd([[
--   " Spelling mistakes will be colored up red.
--   hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
--   hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
--   hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
--   hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f
-- ]])
--
-- vim.cmd([[
--   if !has('nvim')
--     let &t_ZH="\e[3m"
--     let &t_ZR="\e[23m"
--   endif
-- highlight seprator none
-- ]])
-- vim.cmd([[
--   highlight WinSeparator guibg=None
-- ]])
-- Toggle status line
vim.cmd([[
  let s:hidden_all = 1
  function! ToggleHiddenAll()
      if s:hidden_all  == 0
          let s:hidden_all = 1
          set noshowmode
          set noruler
          set laststatus=0
          set noshowcmd
      else
          let s:hidden_all = 0
          set showmode
          set ruler
          set laststatus=2
          set showcmd
      endif
  endfunction

  nnoremap <S-h> :call ToggleHiddenAll()<CR>
  autocmd BufRead,BufNewFile * set laststatus=0
]])
