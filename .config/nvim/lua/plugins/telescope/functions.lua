local M = {}

M.search_dotfiles = function()
	require("telescope.builtin").find_files({
		promp_title = "< lua Vim >",
		cwd = "~/.config/nvim/lua/",
	})
end

M.git_status = function()
	require("telescope.builtin").git_status({
		promp_title = "< Git Status >",
	})
end

M.find_in_folder = function(opts)
	local Path = require("plenary.path")
	local action_set = require("telescope.actions.set")
	local action_state = require("telescope.actions.state")
	local conf = require("telescope.config").values
	opts = opts or {}
	local data = {}
	require("plenary.scandir").scan_dir(vim.loop.cwd(), {
		hidden = opts.hidden,
		only_dirs = true,
		respect_gitignore = opts.respect_gitignore,
		on_insert = function(entry)
			table.insert(data, entry .. Path.path.sep)
		end,
	})
	table.insert(data, 1, "." .. Path.path.sep)

	require("telescope.pickers")
		.new(opts, {
			prompt_title = "Folders for Live Grep",
			finder = require("telescope.finders").new_table({
				results = data,
				entry_maker = require("telescope.make_entry").gen_from_file(opts),
			}),
			previewer = conf.file_previewer(opts),
			sorter = conf.file_sorter(opts),
			attach_mappings = function(prompt_bufnr)
				action_set.select:replace(function()
					local current_picker = action_state.get_current_picker(prompt_bufnr)
					local dirs = {}
					local selections = current_picker:get_multi_selection()
					if vim.tbl_isempty(selections) then
						table.insert(dirs, action_state.get_selected_entry().value)
					else
						for _, selection in ipairs(selections) do
							table.insert(dirs, selection.value)
						end
					end
					require("telescope.actions")._close(prompt_bufnr, current_picker.initial_mode == "insert")
					require("telescope.builtin").live_grep({ search_dirs = dirs })
				end)
				return true
			end,
		})
		:find()
end

M.run_command = function(opts)
	opts = opts or {}
	require("telescope.pickers")
		.new(opts, {
			prompt_title = "Run Command",
			finder = require("telescope.finders").new_oneshot_job(
				-- Your external process here
				{ "git", "--git-dir=" .. os.getenv("HOME") .. "/.dotfiles.git", "ls-tree", "-r", "HEAD", "--name-only" }
			),
		})
		:find()
end

return M
