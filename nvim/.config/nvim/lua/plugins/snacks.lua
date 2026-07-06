return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = { enabled = true },
		lazygit = { enabled = true },
	},
	config = function(_, opts)
		require("snacks").setup(opts)

		local files_src = require("snacks.picker.source.files")
		local orig_get_cmd = files_src.get_cmd
		files_src.get_cmd = function(cmd_name)
			local c, args = orig_get_cmd(cmd_name)
			if c == "rg" and args then
				for i = #args, 2, -1 do
					if args[i] == "!.git" and args[i - 1] == "-g" then
						table.remove(args, i)
						args[i - 1] = "--glob=!.git"
						break
					end
				end
			end
			return c, args
		end

		-- Suppress rg --files exit-1 only (no files found ≠ error); keep grep errors visible
		local proc_src = require("snacks.picker.source.proc")
		local orig_proc = proc_src.proc
		proc_src.proc = function(popts, ctx)
			local is_files_cmd = popts.cmd == "rg" and vim.tbl_contains(popts.args or {}, "--files")
			if is_files_cmd then
				popts = vim.tbl_extend("force", popts, { notify = false })
			end
			return orig_proc(popts, ctx)
		end
	end,
	keys = {
		{
			"<leader>ff",
			function()
				Snacks.picker.smart({ cwd = Snacks.git.get_root() or vim.fn.getcwd() })
			end,
			desc = "Smart find files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep({ cwd = Snacks.git.get_root() or vim.fn.getcwd() })
			end,
			desc = "Live grep",
		},
		{
			"<leader>fg",
			function()
				local root = Snacks.git.get_root() or vim.fn.getcwd()
				local sel = vim.fn.getregion(vim.fn.getpos("v"), vim.fn.getpos("."), { type = vim.fn.mode() })
				Snacks.picker.grep({ search = table.concat(sel, "\n"), cwd = root, live = false, need_search = false })
			end,
			desc = "Grep selection",
			mode = "v",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Open buffers",
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "Help pages",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent files",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Nvim config files",
		},
		{
			"<leader>fw",
			function()
				local root = Snacks.git.get_root() or vim.fn.getcwd()
				Snacks.picker.grep({ search = vim.fn.expand("<cword>"), cwd = root, args = { "--word-regexp" }, live = false, need_search = false })
			end,
			desc = "Search word under cursor",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.lines()
			end,
			desc = "Search in buffer",
		},
		{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
		{ "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git log" },
		{ "<leader>gL", function() Snacks.picker.git_log_file() end, desc = "Git log (file)" },
		{ "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git status" },
		{ "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git branches" },
		{ "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git diff" },
	},
}
