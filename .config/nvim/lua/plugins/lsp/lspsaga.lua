-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	symbol_in_winbar = {
		enable = false,
		separator = " ",
		hide_keyword = true,
		show_file = false,
		respect_root = false,
		color_mode = true,
	},
	-- keybinds for navigation in lspsaga window
	move_in_saga = {
		prev = "<C-k>",
		next = "<C-j>",
	},
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<C-c>o",
		vsplit = "<C-c>v",
		split = "<C-c>i",
		tabe = "<C-c>t",
		quit = "q",
		close = "<Esc>",
	},
})
