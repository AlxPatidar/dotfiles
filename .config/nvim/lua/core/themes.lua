vim.cmd("set termguicolors")
vim.cmd("syntax on")

-- Gruvbox theme setup
-- require("gruvbox").setup({
-- 	overrides = {
-- 		SignColumn = { bg = "#1d2021", fg = "#1d2021" },
-- 	},
-- 	palette_overrides = {
-- 		faded_green = "#b57614",
-- 	},
-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "hard", -- can be "hard", "soft" or empty string
-- 	invert_tabline = true,
-- })
-- vim.cmd([[colorscheme gruvbox]])

-- Material
-- 'default' | 'palenight' | 'ocean' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'darker-community'
-- vim.cmd([[colorscheme material]])
-- vim.g.material_theme_style = "ocean-community"

-- Tokyo Night
-- 'night' | 'storm' | 'moon'
-- vim.cmd([[colorscheme tokyonight]])
-- vim.g.tokyonight_style = "moon"

-- Tokyo Dark
-- vim.cmd([[colorscheme tokyodark]])

-- Everforest
-- 'hard', 'medium'(default), 'soft'
-- vim.cmd([[colorscheme everforest]])
-- vim.g.everforest_background = "soft"

-- Nightfly
-- vim.cmd([[colorscheme nightfly]])
-- kanagawa
require("kanagawa").setup({
	colors = {
		theme = {
			all = {
				float = {
					bg = "none",
				},
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
	theme = "wave", -- can be "wave", "dragon" or empty string
	overrides = function(colors)
		local theme = colors.theme
		return {
			SignColumn = { bg = theme.ui.bg_m1, fg = theme.ui.bg_m1 },
		}
	end,
})
vim.cmd([[colorscheme kanagawa]])

-- vim.cmd([[ colorscheme ghdark ]])
-- Sonokai
-- 'default' | 'atlantis' | 'andromeda' | 'shusia' | 'maia' | 'espresso'
-- vim.cmd([[colorscheme sonokai]])
-- vim.g.sonokai_style = "default"
