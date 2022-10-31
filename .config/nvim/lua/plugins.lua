local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.set_handler("conf", function(_, plugin, value)
  plugin.config = ([[require('plugins.%s').configure()]]):format(value)
end)
-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua' -- show tree like structure for file explorer
  use 'nvim-lualine/lualine.nvim' -- lua line for show status line in vim bottom
  use 'akinsho/toggleterm.nvim' -- open toggle term
  use 'ahmedkhalf/project.nvim' -- show opened file and folder on vim start
  use 'lewis6991/impatient.nvim' -- lazy load plugins on vim start
  use 'akinsho/bufferline.nvim' -- show status line beutiful
  use 'tpope/vim-surround' -- change on surround
  use 'frazrepo/vim-rainbow' -- color bracket
  use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter
  use "lukas-reineke/indent-blankline.nvim"
  -- ==================================
  -- LSP
  -- ==================================
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'RRethy/vim-illuminate'
  use 'prabirshrestha/asyncomplete.vim'
  -- ==================================
  -- Mason
  -- ==================================
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'gfanto/fzf-lsp.nvim'
  use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
  -- ==================================
  -- Telescope
  -- ==================================
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'jvgrootveld/telescope-zoxide'
  use 'cljoly/telescope-repo.nvim'
  -- ==================================
  -- Treesitter
  -- ==================================
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  -- ==================================
  -- Git
  -- ==================================
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use 'will133/vim-dirdiff'
  -- ==================================
  -- syntex highliter
  -- ==================================
  use 'HerringtonDarkholme/yats.vim'
  -- ==================================
  -- Go Language
  -- ==================================
  use 'fatih/vim-go'
  -- ==================================
  -- Theme
  -- ==================================
  use 'EdenEast/nightfox.nvim'
  use 'lunarvim/darkplus.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  use 'shaunsingh/nord.nvim'
  use 'folke/tokyonight.nvim'
  use 'dracula/vim'
  use 'tiagovla/tokyodark.nvim'
  use 'savq/melange'
  use 'sainnhe/sonokai'
  use 'sainnhe/everforest'
  use 'mhartington/oceanic-next'
  use 'flazz/vim-colorschemes'
  use 'kaicataldo/material.vim'
  use 'yunlingz/equinusocio-material.vim'
  use 'ellisonleao/gruvbox.nvim'
  use 'rafi/awesome-vim-colorschemes'
  -- ==================================
  -- Flutter
  -- ==================================
  use 'honza/vim-snippets'
  use 'natebosch/dartlang-snippets'
  use 'thosakwe/vim-flutter'
  use 'dart-lang/dart-vim-plugin'
  use 'natebosch/vim-lsc'
  use 'natebosch/vim-lsc-dart'
  -- ==================================
  -- Javascript Language
  -- ==================================
  use 'mlaursen/vim-react-snippets'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  -- =================================
  --         Utiltity
  -- =================================
  use 'norcalli/nvim-colorizer.lua' -- A high-performance color highlighterpluginplugin
  use 'karb94/neoscroll.nvim'     -- Smooth scrolling for window movement commands
  use 'ttys3/nvim-blamer.lua'     -- A git blame plugin inspired by VS Code's GitLens plugin
  use 'unblevable/quick-scope'    -- An always-on highlight for a unique character in every word on a line to help you use f, F and family.
  use 'AckslD/nvim-neoclip.lua'   -- It records everything that gets yanked in your vim session
  use 'folke/zen-mode.nvim'       -- Code in zen mode
  use 'numToStr/Comment.nvim'     -- Comment code
  use 'mg979/vim-visual-multi'    -- use multiple cursors like sublime
  use 'prettier/vim-prettier'     -- format code
  use 'mhinz/vim-startify'        -- on vim start screen
  use 'goolord/alpha-nvim'        -- alpha screen on start
  use 'dyng/ctrlsf.vim'           -- use searchh
  use 'ThePrimeagen/vim-be-good'  -- vim be good game
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
