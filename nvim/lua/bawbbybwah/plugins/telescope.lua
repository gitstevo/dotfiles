return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-dap.nvim",
	},
	config = function()
		local set = vim.keymap.set
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		telescope.setup({
			extensions = {
				file_browser = {
					mappings = {
						["i"] = {},
					},
				},
			},
			defaults = {
				-- path_display = { "truncate" },
				mappings = {
					i = {
						["<C-a>"] = actions.smart_send_to_qflist + actions.open_qflist,
					},
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
					layout_config = {
						prompt_position = "top",
						width = 0.5,
						height = 0.6,
					},
				},
				live_grep = {
					additional_args = function()
						return { "--hidden" }
					end,
				},
			},
		})

		telescope.load_extension("neoclip")
		telescope.load_extension("fzf")
		telescope.load_extension("file_browser")
		telescope.load_extension("dap")

		set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find Buffers" })
		set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Find Help" })
		set("n", "<leader>fd", ":Telescope diagnostics<CR>", { desc = "Show diagnostics for project" })
		set(
			"n",
			"<leader>fi",
			"<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<cr>",
			{ desc = "Fuzzy find files in cwd" }
		)
	end,
}
