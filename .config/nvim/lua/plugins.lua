local fn = vim.fn

-- Automatically install packer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		", --filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		", --branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install your plugins here
require("lazy").setup({
	"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	"lukas-reineke/indent-blankline.nvim", -- show blankline for formatting
	-- ================
	-- file explorer
	-- ================
	"nvim-tree/nvim-tree.lua", -- file explorer
	-- ================
	-- file explorer
	-- ================
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	}, -- dependency for better sorting performance
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
	}, -- fuzzy finder
	"junegunn/fzf", -- fuzzy finder
	"junegunn/fzf.vim",
	-- ================
	-- theme
	-- ================
	"tiagovla/tokyodark.nvim", -- default theme
	"ellisonleao/gruvbox.nvim",
	"nvim-lualine/lualine.nvim", -- lua line for show status line in vim bottom
	"bluz71/vim-nightfly-colors",
	"folke/tokyonight.nvim",
	"kaicataldo/material.vim",
	"sainnhe/everforest",
	"sainnhe/sonokai",
	"wojciechkepka/vim-github-dark",
	"rebelot/kanagawa.nvim",
	-- ================
	-- auto completion
	-- ================
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	-- ================
	-- snippets
	-- ================
	"l3mon4d3/luasnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets
	-- ================
	-- utiltity
	-- ================
	"goolord/alpha-nvim", -- alpha screen on start
	"will133/vim-dirdiff", -- show directory diff using vim diff
	"acksld/nvim-neoclip.lua", -- it records everything that gets yanked in your vim session
	"kyazdani42/nvim-web-devicons", -- vs-code like icons
	"christoomey/vim-tmux-navigator", -- vim tmux navigation
	-- "mg979/vim-visual-multi", -- multi cursor like sublime and vs code
	"akinsho/toggleterm.nvim", -- toggle term to open
	-- ================
	-- productivity
	-- ================
	"tpope/vim-surround", -- change on surround
	"frazrepo/vim-rainbow", -- color bracket
	"lewis6991/impatient.nvim", -- lazy load plugins on vim start
	"folke/zen-mode.nvim", -- code in zen mode
	"numtostr/comment.nvim", -- comment code
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes
	"akinsho/bufferline.nvim", -- show status line beutiful
	-- ================
	-- mason
	-- ================
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
	-- ================
	-- lsp servers
	-- ================
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	"glepnir/lspsaga.nvim", -- enhanced lsp uis
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion
	-- ================
	-- treesitter configuration
	-- ================
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
	}, -- autoclose tags
	-- ================
	-- git
	-- ================
	"lewis6991/gitsigns.nvim", -- git sign
	"f-person/git-blame.nvim", -- git balm to show commit message and person
	-- ================
	-- formatting & linting
	-- ================
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"simrat39/rust-tools.nvim", -- run anylser
	"prettier/vim-prettier", -- run prettier
	"gelguy/wilder.nvim",
})
