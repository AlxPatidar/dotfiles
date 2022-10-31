local scroll_status_ok, neoscroll = pcall(require, "neoscroll")
if scroll_status_ok then
  neoscroll.setup({
  	 mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'}
  })
end

-- A git blame plugin for neovim inspired by VS Code's GitLens plugin
local blamer_status_ok, blamer = pcall(require, "nvim-blamer")
if blamer_status_ok then
	blamer.setup({
	    format = '%committer │ %committer-time-human │ %summary',
	})
end

-- A high-performance color highlighter
local colorizer_status_ok, colorizer = pcall(require, "colorizer")
if colorizer_status_ok then
colorizer.setup({
  '*';
  html = { mode = 'foreground' };
}, { mode = 'background' })
end

-- neoclip is a clipboard manager for neovim inspired by for example clipmenu
local neoclip_status_ok, neoclip = pcall(require, "neoclip")
if neoclip_status_ok then
	neoclip.setup()
end

-- zen mode is used to clear all other ui and focus on code
local zen_mode_status_ok, zen_mode = pcall(require, "zen-mode")
if zen_mode_status_ok then
	zen_mode.setup({
    window = {
      height = 0.95, -- height
      width = 80, -- width of the Zen window
      backdrop = 0.65, -- shade backdrop
    },
    plugins = {
      kitty = {
        enabled = true,
        font = "+4", -- font size increment
      },
    },
  })
end

-- comment plug is used to comment on all langauge server
local comment_status_ok, comment_plug = pcall(require, "Comment")
if comment_status_ok then
	comment_plug.setup()
end

local lsp_installer_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if lsp_installer_ok then
  lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
  end)
end

-- git sign to show difference and changes on show sign
local git_sign_ok, git_sign = pcall(require, "gitsigns")
if git_sign_ok then
	git_sign.setup({
    signs = {
      add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
      change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
      delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
      topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
      changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
    },
  })
end

-- setup nvim-cmp
local autopair_status_ok, npairs = pcall(require, "nvim-autopairs")
if autopair_status_ok then
  npairs.setup({
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
  })
end

-- setup fzf 
local fzf_ok, fzf_plug = pcall(require, "fzf_lsp")
if fzf_ok then
	fzf_plug.setup()
end

-- setup indent blankline to show dots on function indent
local indent_blankline, indent_blankline_plug = pcall(require, "indent_blankline")
if indent_blankline then
	indent_blankline_plug.setup({
    indentLine_enabled = 1,
    filetype_exclude = {
      "help",
      "terminal",
      "alpha",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "mason",
      "",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
  })
end

-- setup fzf 
local mason_ok, mason_plug = pcall(require, "mason")
if mason_ok then
	mason_plug.setup()
end