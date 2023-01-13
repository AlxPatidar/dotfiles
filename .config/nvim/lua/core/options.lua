local opt = vim.opt

opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.relativenumber = true -- show relative line numbers
opt.laststatus = 3
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.confirm = true -- confirm before change
opt.exrc = true -- remove exrc
opt.swapfile = false -- do not create swap file
opt.backup = false -- remove back up and swap file

opt.wrap = false -- disable line wrapping

opt.termguicolors = true -- setup terminal gui colors
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.modifiable = true
opt.completeopt = "menu,menuone,noselect"
opt.hlsearch = false -- Highlight found searches
opt.scrolloff = 7 -- Leave 5 lines of buffer when scrolling
opt.sidescrolloff = 10 -- Leave 10 characters of horizontal buffer when scrolling
opt.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
opt.spelllang = "en_us"
opt.ignorecase = true -- ignore search case
opt.clipboard = "unnamedplus" -- Copy paste between vim and everything else
opt.bg = "dark"
