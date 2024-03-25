local chatKeymaps = {
	close = "<C-q>",
	yank_last = "<leader>y",
	yank_last_code = "<leader>c",
	scroll_up = "<C-u>",
	scroll_down = "<C-d>",
	new_session = "<C-n>",
	cycle_windows = "<Tab>",
	cycle_modes = "<C-f>",
	next_message = "<C-j>",
	prev_message = "<C-k>",
	select_session = "<Space>",
	rename_session = "r",
	delete_session = "d",
	draft_message = "<C-r>",
	edit_message = "e",
	delete_message = "d",
	toggle_settings = "<C-o>",
	toggle_sessions = "<C-p>",
	toggle_help = "<C-h>",
	toggle_message_role = "<C-r>",
	toggle_system_role_open = "<C-s>",
	stop_generating = "<C-x>",
}

local editKeymaps = {
	close = "<C-c>",
	accept = "<C-y>",
	toggle_diff = "<C-d>",
	toggle_settings = "<C-o>",
	toggle_help = "<C-h>",
	cycle_windows = "<Tab>",
	use_output_as_input = "<C-i>",
}

return {
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("chatgpt").setup({
				chat = {
					keymaps = chatKeymaps,
				},
				edit_with_instructions = {
					keymaps = editKeymaps,
				},
			})
		end,
	},
}
