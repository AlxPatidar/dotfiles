local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
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

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"           -- show tree like structure for file explorer
  use "nvim-lualine/lualine.nvim"          -- lua line for show status line in vim bottom
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "akinsho/bufferline.nvim"

  use 'filipdutescu/renamer.nvim'
  -- LSP
  use 'neovim/nvim-lspconfig'               -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/nvim-cmp'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

   -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"
  -- syntex highliter
  use 'HerringtonDarkholme/yats.vim'
  use 'maxmellon/vim-jsx-pretty'

  -- learn
  use 'ThePrimeagen/vim-be-good'   -- Game for learn
  -- Theme 
  use 'EdenEast/nightfox.nvim'
  use "lunarvim/darkplus.nvim"
  use 'bluz71/vim-nightfly-guicolors'
  use 'shaunsingh/nord.nvim'
  use 'rose-pine/neovim'
  use 'folke/tokyonight.nvim'
  use 'dracula/vim'
  use 'tiagovla/tokyodark.nvim'
  use "savq/melange"
  use 'sainnhe/sonokai' 
  use 'sainnhe/everforest'
  use 'mhartington/oceanic-next'
 --   ==================================
 --         Utiltity
 -- ==================================
  use 'norcalli/nvim-colorizer.lua'          -- A high-performance color highlighter
  use 'karb94/neoscroll.nvim'                -- Smooth scrolling for window movement commands
  use 'ttys3/nvim-blamer.lua'                -- A git blame plugin inspired by VS Code's GitLens plugin
  use 'unblevable/quick-scope'               -- An always-on highlight for a unique character in every word on a line to help you use f, F and family.
  use 'AckslD/nvim-neoclip.lua'              -- It records everything that gets yanked in your vim session
  use "folke/zen-mode.nvim"                  -- Code in zen mode
  use "numToStr/Comment.nvim"                -- Comment code
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)



