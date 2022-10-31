local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

local function cmap(shortcut, command)
  map('c', shortcut, command)
end

-- Map leader to space
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local silent = { silent = true }

map("i", "jj", "<Esc>") -- change mode
map("n", "<Leader>u", ":PackerSync<CR>") -- Update Plugins
map("n", "<Leader>v", ":source $MYVIMRC<CR>") -- Open nvimrc file
map("n", "<Leader>sv", ":luafile %<CR>") -- Source nvimrc file

-- Easier split mappings
map("n", "<Leader><Down>", "<C-W><C-J>", silent)
map("n", "<Leader><Up>", "<C-W><C-K>", silent)
map("n", "<Leader><Right>", "<C-W><C-L>", silent)
map("n", "<Leader><Left>", "<C-W><C-H>", silent)
map("n", "<Leader>;", "<C-W>R", silent)
map("n", "<Leader>[", "<C-W>_", silent)
map("n", "<Leader>]", "<C-W>|", silent)
map("n", "<Leader>=", "<C-W>=", silent)

map("i", "<C-s>", "<cmd>:w<CR>") -- Alternate way to save
map("n", "<C-s>", "<cmd>:w<CR>") -- Alternate way to save

map("n", "<C-Q>", "<cmd>:wq!<CR>") -- Alternate way to quit

map("n", "<c-left>", "<cmd>:tabprevious<cr>")
map("n", "<c-right>", "<cmd>:tabnext<cr>")

-- disable arrow keys
map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- home and end line in command mode
cmap('<C-a>', '<Home>')
cmap('<C-e>', '<End>')

-- Find files using Telescope command-line sugar.
nmap("<C-p>", "<cmd>Telescope find_files<cr>")
nmap("<C-f>", "<cmd>Telescope live_grep<cr>")
nmap("<leader>hh", "<cmd>Telescope help_tags<cr>")
nmap("<leader>ch", "<cmd>Telescope command_history<cr>")
nmap("<leader>file", "<cmd>Telescope file_browser<cr>")
nmap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nmap("<leader>nc", "<cmd>Telescope neoclip<cr>")

nmap("<leader>vim", "<cmd>lua require('function').search_dotfiles()<CR>")
nmap("<leader>kk", "<cmd>lua require('function').find_in_folder()<CR>")
nmap("<leader>ff", "<cmd>lua require('function').find_in_folder()<CR>")
-- search in folder
nmap("<C-F>f", "<cmd>CtrlSF")
-- Git
nmap("<leader>gb", "<cmd>Telescope git_branches<cr>")
nmap("<leader>gs", "<cmd>Telescope git_status<cr>")

-- Zoxide List
nmap("<leader>cd", "<cmd>lua require('telescope').extensions.zoxide.list{}<CR>")
nmap("<leader>p", "<cmd>lua require('telescope').extensions.neoclip.default()<CR>")
nmap("<leader>pro", "<cmd>lua require('telescope').extensions.project.project{}<CR>")

-- LSP
nmap('K', '<cmd>Lspsaga hover_doc<cr>')
imap('<C-k>', '<cmd>Lspsaga hover_doc<cr>')
nmap('gh', '<cmd>Lspsaga lsp_finder<cr>')
nmap('<C-e>', '<cmd>Lspsaga show_line_diagnostics<CR>')

-- git
nmap('<C-g>', '<cmd>GitMessenger<cr>')

-- close tab
map("n", "<C-d>", "<cmd>:bdelete<CR>")
nmap("<leader>d", "<cmd>:bdelete<CR>")
nmap("<leader>bd", "<cmd>:bdelete<CR>")
nmap("<leader>bn", "<cmd>:bNext<CR>")
nmap("<leader>bp", "<cmd>:bprevious<CR>")

-- Move text up and down
map("n", "<A-j>", ":NvimTreeToggle<CR>")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- git
nmap('<C-g>', '<cmd>GitMessenger<cr>')

-- NvimTreeToggle
map("n", "<C-t>", "<cmd>NvimTreeToggle<CR>")
map("i", "<C-t>", "<cmd>NvimTreeToggle<CR>")

-- toggle term
nmap("<F1>", "<cmd>ToggleTerm<cr>")

-- vim fugitive
nmap("<space>gh", "<cmd>diffget //2<cr>")
nmap("<space>gu", "<cmd>diffget //3<cr>")
nmap("<space>gs", "<cmd>G<cr>")

-- Lsp
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<F2>', '<cmd>j<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

