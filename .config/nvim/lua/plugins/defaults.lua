-- comment plug is used to comment on all langauge server
local comment_status_ok, comment_plug = pcall(require, "Comment")
if comment_status_ok then
    comment_plug.setup()
end

-- zen mode is used to clear all other ui and focus on code
local zen_mode_status_ok, zen_mode = pcall(require, "zen-mode")
if zen_mode_status_ok then
    zen_mode.setup({
        window = {
            height = 0.95, -- height
            width = 80, -- width of the Zen window
            backdrop = 0.65 -- shade backdrop
        },
        plugins = {
            kitty = {
                enabled = true,
                font = "+4" -- font size increment
            }
        }
    })
end

-- A git blame plugin for neovim inspired by VS Code's GitLens plugin
local blamer_status_ok, blamer = pcall(require, "nvim-blamer")
if blamer_status_ok then
	blamer.setup({
	    format = '%committer │ %committer-time-human │ %summary',
	})
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
    check_ts = true, -- enable treesitter
	ts_config = {
		lua = { "string" }, -- don't add pairs in lua string treesitter nodes
		javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
		java = false, -- don't check treesitter on java
	}
  })
end

-- neoclip is a clipboard manager for neovim inspired by for example clipmenu
local neoclip_status_ok, neoclip = pcall(require, "neoclip")
if neoclip_status_ok then
	neoclip.setup()
end

-- setup rust tools
local rust_status_ok, rust = pcall(require, "rust-tools")
if rust_status_ok then
    neoclip.setup({
     tools = {
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
          show_parameter_hints = true,
          parameter_hints_prefix = "",
          other_hints_prefix = "",
        }
      }
    })
end
