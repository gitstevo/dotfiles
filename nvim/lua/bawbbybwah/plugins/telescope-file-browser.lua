return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		vim.api.nvim_set_keymap(
			"n",
			"<leader>bo",
			":Telescope file_browser path=%:p:h select_buffer=true<CR>",
			{ noremap = true }
		)
	end,
}
