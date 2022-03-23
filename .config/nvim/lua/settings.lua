local opt = vim.opt -- to set options
local g = vim.g     -- to set global var

opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.cursorline = false
opt.cursorcolumn = false
opt.encoding = "utf-8"                  -- Set default encoding to UTF-8
opt.expandtab = true                    -- Use spaces instead of tabs
opt.foldenable = false
opt.foldmethod = "indent"
opt.formatoptions = "l"
opt.hidden = true                       -- Enable background buffers
opt.hlsearch = false                     -- Highlight found searches
opt.ignorecase = true                   -- Ignore case
opt.inccommand = "split"                -- Get a preview of replacements
opt.incsearch = true                    -- Shows the match while typing
opt.joinspaces = false                  -- No double spaces with join
vim.o.lazyredraw = true
opt.linebreak = true                    -- Stop words being broken on wrap
opt.number = true                       -- Show line numbers
opt.list = true                         -- Show some invisible characters
opt.listchars = { tab = " ", trail = "·" }
opt.relativenumber = true
opt.scrolloff = 4                       -- Lines of context
opt.shiftround = true                   -- Round indent
opt.shiftwidth = 4                      -- Size of an indent
opt.showmode = false                    -- Don't display mode
opt.sidescrolloff = 8                   -- Columns of context
opt.signcolumn = "yes:1"                -- always show signcolumns
opt.smartcase = true                    -- Do not ignore case with capitals
opt.smartindent = true                  -- Insert indents automatically
opt.splitbelow = true                   -- Put new windows below current
opt.splitright = true                   -- Put new windows right of current
opt.tabstop = 4                         -- Number of spaces tabs count for
opt.termguicolors = true                -- You will have bad experience for diagnostic messages when it's default 4000.
opt.pumheight=10   
opt.ruler=true              	        -- Show the cursor position all the time
opt.cmdheight=1                         -- More space for displaying messages
opt.splitbelow = true                          -- Horizontal splits will automatically be below
opt.splitright = true                          -- Vertical splits will automatically be to the right
opt.conceallevel=0                      -- So that I can see `` in markdown files
opt.tabstop=2                           -- Insert 2 spaces for a tab
opt.shiftwidth=2                        -- Change the number of space characters inserted for indentation
opt.smarttab  = true                           -- Makes tabbing smarter will realize you have 2 vs 4
opt.expandtab   = true                         -- Converts tabs to spaces
opt.smartindent  = true                        -- Makes indenting smart
opt.autoindent = true                          -- Good auto indent
opt.laststatus=0                        -- Always display the status line
opt.number   = true                            -- Line numbers
opt.cursorline     = true                      -- Enable highlighting of the current line
opt.background='dark'                     -- tell vim what the background color looks like
opt.showtabline=2                       -- Always show tabs
opt.updatetime=300                      -- Faster completion
opt.timeoutlen=500                      -- By default timeoutlen is 1000 ms
opt.clipboard='unnamedplus'               -- Copy paste between vim and everything else
opt.tabstop=4
opt.softtabstop=4
opt.scrolloff=7                         -- Leave 5 lines of buffer when scrolling
opt.sidescrolloff=10                    -- Leave 10 characters of horizontal buffer when scrolling
opt.undofile = false
opt.undolevels=1000
opt.undoreload=10000
opt.relativenumber = true
opt.termguicolors = true
opt.smartindent = true
opt.ignorecase = true
opt.modifiable = true
opt.foldmethod="manual"  
opt.laststatus=2
opt.spelllang="en_us"
opt.spell = false
opt.list= true
opt.confirm= true
opt.exrc= true
opt.swapfile= false
opt.backup= false

vim.o.whichwrap = vim.o.whichwrap .. "<,>" -- Wrap movement between lines in edit mode with arrows
opt.wrap = true
-- opt.cc = "80"
opt.mouse = "a"   -- Enable your mouse

opt.guicursor =
  "n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20"
opt.undodir = vim.fn.stdpath("config") .. "/undo"
opt.undofile = true


vim.cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = true}") -- disabled in visual mode
-- Give me some fenced codeblock goodness
g.markdown_fenced_languages = { "html", "javascript", "typescript", "css", "scss", "lua", "vim" }

g.flutter_show_log_on_run = 'tab'

