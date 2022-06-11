-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ashok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ashok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ashok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ashok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ashok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dartlang-snippets"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/dartlang-snippets",
    url = "https://github.com/natebosch/dartlang-snippets"
  },
  ["deoplete.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/deoplete.nvim",
    url = "https://github.com/Shougo/deoplete.nvim"
  },
  ["fzf-lsp.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/fzf-lsp.nvim",
    url = "https://github.com/gfanto/fzf-lsp.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-blamer.lua"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-blamer.lua",
    url = "https://github.com/ttys3/nvim-blamer.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["renamer.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["spacegray.vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/spacegray.vim",
    url = "https://github.com/ajh17/spacegray.vim"
  },
  tagbar = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/majutsushi/tagbar"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope-repo.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/telescope-repo.nvim",
    url = "https://github.com/cljoly/telescope-repo.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/tokyonight-vim",
    url = "https://github.com/ghifarit53/tokyonight-vim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/typescript-vim",
    url = "https://github.com/leafgarland/typescript-vim"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-flutter"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-flutter",
    url = "https://github.com/thosakwe/vim-flutter"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-lsc"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-lsc",
    url = "https://github.com/natebosch/vim-lsc"
  },
  ["vim-lsc-dart"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-lsc-dart",
    url = "https://github.com/natebosch/vim-lsc-dart"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-rainbow",
    url = "https://github.com/frazrepo/vim-rainbow"
  },
  ["vim-react-snippets"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-react-snippets",
    url = "https://github.com/mlaursen/vim-react-snippets"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/ashok/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
