-- toggle term to toggle_status_ok toggle on current window
local toggle_status_ok, toggleterm = pcall(require, "toggleterm")
if toggle_status_ok then
	toggleterm.setup({
    size = 70,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    close_on_exit = true,
    direction = "vertical",
    autochdir = false,
  })
end

local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ 
  cmd = "lazygit", 
  hidden = true,
  direction = 'float'
})
function _lazygit_toggle()
  lazygit:toggle()
end

local zsh = Terminal:new({ cmd = "zsh", hidden = true })
function _zsh_toggle()
  zsh:toggle()
end

-- toggle term
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _zsh_toggle()<CR>", {noremap = true, silent = true})

