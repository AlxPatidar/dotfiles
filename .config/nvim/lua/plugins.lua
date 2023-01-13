local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[ augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

packer.set_handler("conf", function(_, plugin, value)
	plugin.config = ([[require('plugins.%s').configure()]]):format(value)
end)
-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use
	use("lukas-reineke/indent-blankline.nvim") -- show blankline for formatting
	-- ================
	-- File explorer
	-- ================
	use("nvim-tree/nvim-tree.lua") -- file explorer
	-- ================
	-- File explorer
	-- ================
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	}) -- dependency for better sorting performance
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
	}) -- fuzzy finder
	-- ================
	-- Theme
	-- ================
	use("tiagovla/tokyodark.nvim") -- default theme
	use("ellisonleao/gruvbox.nvim")
	use("nvim-lualine/lualine.nvim") -- lua line for show status line in vim bottom
	use("bluz71/vim-nightfly-colors")
	use("folke/tokyonight.nvim")
	use("kaicataldo/material.vim")
	use("sainnhe/everforest")
	use("sainnhe/sonokai")
	-- ================
	-- Auto completion
	-- ================
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	-- ================
	-- Snippets
	-- ================
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets
	-- ================
	-- Utiltity
	-- ================
	use("goolord/alpha-nvim") -- alpha screen on start
	use("will133/vim-dirdiff") -- show directory diff using vim diff
	use("AckslD/nvim-neoclip.lua") -- It records everything that gets yanked in your vim session
	use("kyazdani42/nvim-web-devicons") -- vs-code like icons
	use("christoomey/vim-tmux-navigator") -- vim tmux navigation
	use("mg979/vim-visual-multi") -- multi cursor like sublime and vs code
	use("akinsho/toggleterm.nvim") -- toggle term to open
	-- ================
	-- Productivity
	-- ================
	use("tpope/vim-surround") -- change on surround
	use("frazrepo/vim-rainbow") -- color bracket
	use("lewis6991/impatient.nvim") -- lazy load plugins on vim start
	use("folke/zen-mode.nvim") -- Code in zen mode
	use("numToStr/Comment.nvim") -- Comment code
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes
	use("akinsho/bufferline.nvim") -- show status line beutiful
	-- ================
	-- Mason
	-- ================
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	-- ================
	-- LSP Servers
	-- ================
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
	-- ================
	-- treesitter configuration
	-- ================
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	-- ================
	-- Git
	-- ================
	use("lewis6991/gitsigns.nvim") -- git sign
	use("f-person/git-blame.nvim") -- git balm to show commit message and person
	-- ================
	-- formatting & linting
	-- ================
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("simrat39/rust-tools.nvim") -- run anylser
	use("prettier/vim-prettier") -- run prettier
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
