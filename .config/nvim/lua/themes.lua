-- local status_ok, nightfox = pcall(require, "nightfox")
-- if not status_ok then
--   return
-- end
-- nightfox.setup({
--     fox = "nordfox",
--     alt_nc = true,
--     styles = {
--         comments = "italic",
--         keywords = "bold",
--         functions = "italic,bold",
--     },
--     inverse = {
--         visual = true,
--         search = true,
--         match_paren = true,
--     },
-- })
-- nightfox.load()
-- vim.cmd("colorscheme melange")

-- vim.g.sonokai_style = 'maia' -- `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,
-- vim.cmd("colorscheme sonokai")
-- vim.g.sonokai_enable_italic = 1
-- vim.g.sonokai_disable_italic_comment = 1
-- Support 24-bit color
vim.cmd("set termguicolors")
vim.cmd("syntax on")
-- Aesthetics
vim.cmd [[colorscheme tokyodark]]
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

-- vim.cmd[[colorscheme nord]]
-- vim.cmd('colorscheme rose-pine')
-- vim.cmd[[colorscheme tokyonight]]
-- vim.g.tokyonight_style = "night"
-- vim.cmd[[colorscheme dracula]]
-- vim.cmd[[colorscheme tokyodark]]
-- vim.cmd[[colorscheme catppuccin]]
-- vim.cmd("colorscheme everforest")
-- vim.g.everforest_background = 'hard' -- 'hard', 'medium'(default), 'soft'

-- Faviorite
-- vim.cmd[[colorscheme monokai-phoenix]]
-- vim.cmd[[colorscheme moriarty]]
-- vim.cmd[[colorscheme OceanicNext]]


-- vim.cmd [[colorscheme nightfly]]
-- vim.cmd [[colorscheme material]]
-- vim.g.material_theme_style = "ocean-community"
-- vim.cmd [[ colorscheme equinusocio_material ]]
-- vim.g.equinusocio_material_style = 'pure'
-- let my_color_scheme = ['monokai-phoenix', 'moriarty', 'OceanicNext']
-- execute  'colorscheme ' my_color_scheme[rand() % (len(my_color_scheme) -1 )]
