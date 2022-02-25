local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Map leader to space
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }


-- noremap <silent> <leader>y "+y
-- noremap <silent> <leader>Y "+Y
-- noremap <silent> <leader>p "+p
-- noremap <silent> <leader>P "+P


map("i", "jj", "<Esc>")                            -- change mode
map("n", "<Leader>u", ":PackerSync<CR>")                                         -- Update Plugins
map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")                          -- Open nvimrc file
map("n", "<Leader>sv", ":luafile %<CR>")                                           -- Source nvimrc file


-- Easier split mappings
map("n", "<Leader><Down>", "<C-W><C-J>", { silent = true })
map("n", "<Leader><Up>", "<C-W><C-K>", { silent = true })
map("n", "<Leader><Right>", "<C-W><C-L>", { silent = true })
map("n", "<Leader><Left>", "<C-W><C-H>", { silent = true })
map("n", "<Leader>;", "<C-W>R", { silent = true })
map("n", "<Leader>[", "<C-W>_", { silent = true })
map("n", "<Leader>]", "<C-W>|", { silent = true })
map("n", "<Leader>=", "<C-W>=", { silent = true })


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
nmap("<C-b>", "<cmd>Telescope buffers<cr>")
nmap("<leader>ch", "<cmd>Telescope command_history<cr>")
nmap("<leader>hh", "<cmd>Telescope help_tags<cr>")
nmap("<leader>ff", "<cmd>Telescope file_browser<cr>")
nmap("<leader>nc", "<cmd>Telescope neoclip<cr>")


nmap("<leader>b", "<cmd>Telescope git_branches<cr>")
nmap("<leader>s", "<cmd>Telescope git_status<cr>")
nmap("<leader>c", "<cmd>Telescope git_commits<cr>")

-- LSP
nmap('K', '<cmd>Lspsaga hover_doc<cr>')
imap('<C-k>', '<cmd>Lspsaga hover_doc<cr>')
nmap('gh', '<cmd>Lspsaga lsp_finder<cr>')
nmap('<C-e>', '<cmd>Lspsaga show_line_diagnostics<CR>')

-- git
nmap('<C-g>', '<cmd>GitMessenger<cr>')


-- Move text up and down
map("n", "<A-j>", ":NvimTreeToggle<CR>")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")


-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")


-- NvimTreeToggle
map("n", "<C-t>", "<cmd>NvimTreeToggle<CR>")
map("i", "<C-t>", "<cmd>NvimTreeToggle<CR>")

-- toggle term
nmap("<F1>", "<cmd>ToggleTerm<cr>")

-- Lsp
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap=true, silent=true })
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap=true, silent=true })
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap=true, silent=true })
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', { noremap=true, silent=true })
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', { noremap=true, silent=true })
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', { noremap=true, silent=true })
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { noremap=true, silent=true })
map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap=true, silent=true })
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap=true, silent=true })
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true })
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap=true, silent=true })
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap=true, silent=true })
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap=true, silent=true })
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', { noremap=true, silent=true })
