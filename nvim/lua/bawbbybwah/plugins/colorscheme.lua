return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "Frappe",
	-- 		})
	-- vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
