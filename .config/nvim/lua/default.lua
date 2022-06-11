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

-- zen-mode is used for programing with dnd mode :smile
local zen_mode_status_ok, zen_mode = pcall(require, "zen-mode")
if zen_mode_status_ok then
	zen_mode.setup()
end

-- neoclip is a clipboard manager for neovim inspired by for example clipmenu
local comment_status_ok, comment_plug = pcall(require, "Comment")
if comment_status_ok then
	comment_plug.setup()
end

-- nvim auto pair to auto complete close bracket
local auto_pair_status_ok, auto_pair_plug = pcall(require, "nvim-autopairs")
if auto_pair_status_ok then
	auto_pair_plug.setup()
end

-- manage workspace using project
local project_ok, project_plug = pcall(require, "project_nvim")
if project_ok then
	project_plug.setup()
end
-- setup fzf 
local fzf_ok, fzf_plug = pcall(require, "fzf_lsp")
if fzf_ok then
	fzf_plug.setup()
end
