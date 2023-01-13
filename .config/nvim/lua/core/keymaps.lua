-- Map leader to space
vim.g.mapleader = " "
local opts = {
	noremap = true,
	silent = true,
}
local silent = {
	silent = true,
}

local function map(mode, lhs, rhs, opts)
	local options = {
		noremap = true,
	}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- change mode
map("i", "jj", "<Esc>")
-- soruce nvimrc file
map("n", "<Leader>v", ":source %<CR>")

-- Alternate way to save
map("i", "<C-s>", "<cmd>:w<CR>")
map("n", "<C-s>", "<cmd>:w<CR>")

-- disable arrow keys
map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")

-- Reselect visual block after indent/outdent
map("v", "<", "<gv")
map("v", ">", ">gv")

--  tab operation
map("n", "<C-w>", "<cmd>:bd<CR>") -- close tab
map("n", "<leader>d", "<cmd>:bd<CR>") -- close tab
map("n", "<leader>bn", "<cmd>:bNext<CR>") -- next tab
map("n", "<C-PageUp>", "<cmd>:bNext<CR>") -- next tab
map("n", "<leader>bp", "<cmd>:bprevious<CR>") -- previous tab
map("n", "<C-PageDown>", "<cmd>:bprevious<CR>") -- previous tab

-- Move text up and down
map("n", "<A-j>", "<cmd>:m+<CR>==<CR>")
map("n", "<A-k>", "<cmd>:m-2<CR>==<CR>")
map("i", "<A-j>", "<Esc>:m+<CR>==gi<CR>")
map("i", "<A-k>", "<Esc>:m-2<CR>==gi<CR>")
map("v", "<A-j>", "<cmd>:m'>+<CR>gv=gv")
map("v", "<A-k>", "<cmd>:m-2<CR>gv=gv")

-- search term should be in middel
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<C-F>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- on select and replace hold old buffer
map("x", "<leader>p", [["_dP]])

-- toggle file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<C-b>", ":NvimTreeToggle<CR>")

-- merge line without moving cursor
map("n", "J", "mzJ`z")

-- scroll up and down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- cancel on escap
map("i", "<C-c>", "<Esc>")

-- select text and replace
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- apply code prettier
map("n", "<leader>p", ":Prettier<CR>:w<CR>")

-- telescope
-- find files within current working directory, respects .gitignore
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- find string in current working directory as you type
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- find string under cursor in current working directory
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
-- list open buffers in current neovim instance
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- list available help tags
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- find file in folder
map("n", "<leader>ff", "<cmd>lua require('plugins.telescope.functions').find_in_folder()<CR>")
-- search vim
map("n", "<leader>vim", "<cmd>lua require('plugins.telescope.functions').search_dotfiles()<CR>")
