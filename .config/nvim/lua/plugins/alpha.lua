local alpha = require("alpha")
local function button(sc, txt, keybind)
	local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")
	local opts = {
		position = "center",
		text = txt,
		shortcut = sc,
		cursor = 5,
		width = 36,
		align_shortcut = "right",
		hl = "AlphaButtons",
	}

	if keybind then
		opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
	end

	return {
		type = "button",
		val = txt,
		on_press = function()
			local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
			vim.api.nvim_feedkeys(key, "normal", false)
		end,
		opts = opts,
	}
end

local col = function(strlist, opts)
	-- strlist is a TABLE of TABLES, representing columns of text
	-- opts is a text display option

	-- column spacing
	local padding = 6
	-- fill lines up to the maximim length with 'fillchar'
	local fillchar = " "
	-- columns padding char (for testing)
	local padchar = " "

	-- define maximum string length in a table
	local maxlen = function(str)
		local max = 0
		for i in pairs(str) do
			if #str[i] > max then
				max = #str[i]
			end
		end
		return max
	end

	-- add as much right-padding to align the text block
	local pad = function(str, max)
		local strlist = {}
		for i in pairs(str) do
			if #str[i] < max then
				local newstr = str[i] .. string.rep(fillchar, max - #str[i])
				table.insert(strlist, newstr)
			else
				table.insert(strlist, str[i])
			end
		end
		return strlist
	end

	-- this is a table for text strings
	local values = {}
	-- process all the lines
	for i = 1, maxlen(strlist) do
		local str = ""
		-- process all the columns but last, because we dont wand extra padding
		-- after last column
		for column = 1, #strlist - 1 do
			local maxstr = maxlen(strlist[column])
			local padded = pad(strlist[column], maxstr)
			if strlist[column][i] == nil then
				str = str .. string.rep(fillchar, maxstr) .. string.rep(padchar, padding)
			else
				str = str .. padded[i] .. string.rep(padchar, padding)
			end
		end

		-- lets process the last column, no extra padding
		do
			local maxstr = maxlen(strlist[#strlist])
			local padded = pad(strlist[#strlist], maxstr)
			if strlist[#strlist][i] == nil then
				str = str .. string.rep(fillchar, maxlen(strlist[#strlist]))
			else
				str = str .. padded[i]
			end
		end

		-- insert result into output table
		table.insert(values, { type = "text", val = str, opts = opts })
	end

	return values
end

-- DEFAULT THEME
local default = {}

default.ascii = {
	"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
	"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
	"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
	"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
	"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
	"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
	"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
	" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
	" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
	"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
	"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

default.header = {
	type = "text",
	val = default.ascii,
	opts = {
		position = "center",
		hl = "SpecialComment",
	},
}

-- key reference
local telescope = {
	"<C-p>    find files",
	"<C-f>    live grep",
	"<spc>fb  buffers",
	"<spc>nc  neoclip",
	"<spc>ff  find in folder",
	"<spc>ch  command history",
}

local buffers = {
	"<spc>d    close tab",
	"<spc>bd   buff delete",
	"<spc>bn   buff next",
	"<spc>bp   buff prev",
	"<spc>bad  buff all del",
}

local preview = {
	"<C-g>    git message",
	"<spc>gb  git blame",
	"<spc>gs  git status",
	"S-nc     Open neoclip",
	'""p      Paste neoclip text',
}

local lsp_nav1 = {
	":%s/word/replace/ Replace a word",
	"?pattern          backward search",
	":%s/old/new/g     Replace all old with new",
	":%s/old/new/gc    Replace with confirmation",
	"v-Action-S-tag    Apply tag on action",
}

local git_blame_and_lsp_utils = {
	'ysiw" Surround word with ""',
	"yss(  Surround Sentence ()",
	'ds"   Delete Surround "',
	"dst   Delete Surround tags",
	"cst<  Change Surround <",
	"cs\"' Change Surround \"a\" => 'a'",
}

local lsp_nav2 = {
	"gD  Go to defination",
	"gi  Go to Implementation",
	"gr  Go to Reference",
	"F2  Rename",
	"F1  Toggle Terminal",
}

default.buttons = {
	type = "group",
	val = {
		button("e", "📝  new", ":ene <BAR> startinsert <CR>"),
		button("p", "🌳  plugin", ":e ~/.config/nvim/lua/plugins.lua <CR>"),
		button("z", "✨  zsh", ":e ~/.zshrc <CR>"),
		button("b", "✨  bash", ":e ~/.bashrc <CR>"),
		button("u", "✅  update", ":PackerSync<CR>"),
		button("b", "🛑  quit", ":qa<CR>"),
	},
	position = "center",
}

default.block1 = {
	type = "group",
	val = col({ telescope, buffers, preview }, {
		position = "center",
		hl = {
			{ "SpecialKey", 0, -1 },
		},
	}),
	opts = {
		spacing = 0,
	},
}

default.block2 = {
	type = "group",
	val = col({ git_blame_and_lsp_utils, lsp_nav1, lsp_nav2 }, {
		position = "center",
		hl = {
			{ "SpecialKey", 0, -1 },
		},
	}),
	opts = {
		spacing = 0,
	},
}

-- load config
alpha.setup({
	layout = {
		{ type = "padding", val = 1 },
		default.header,
		{ type = "padding", val = 1 },
		default.buttons,
		{ type = "padding", val = 1 },
		default.block1,
		{ type = "padding", val = 1 },
		default.block2,
		{ type = "padding", val = 1 },
	},
	opts = {},
})

-- autocmd
-- hide/unhide tabs when toggling Alpha
vim.cmd([[ autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2 ]])
