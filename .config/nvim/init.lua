require("plugins")
-- ================
-- Core
-- ================
require("core.themes")
require("core.options")
require("core.keymaps")
require("core.settings")
require("core.impatient")
-- ================
-- Plugins
-- ================
require("plugins.alpha")
require("plugins.defaults")
require("plugins.tabs")
require("plugins.tree")
require("plugins.completions")
require("plugins.toggleterm")
-- ================
-- Status line
-- ================
require("plugins.statusline.lualine")
-- ================
-- Telescope
-- ================
require("plugins.telescope.telescope")
require("plugins.telescope.functions")
-- ================
-- LSP
-- ================
require("plugins.lsp.masons")
require("plugins.lsp.lspconfig")
require("plugins.lsp.lspsaga")
require("plugins.lsp.null-ls")
-- ================
-- Treesitter
-- ================
require("plugins.treesitter.treesitter")
require("plugins.treesitter.autopairs")
