return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		-- require("toggleterm").setup(
		config = {
			open_mapping = [[<c-t>]],
			size = 10,
			shade_terminals = false,
			persist_mode = false,
			auto_scroll = true,
			direction = "horizontal",
		},
	},
}
