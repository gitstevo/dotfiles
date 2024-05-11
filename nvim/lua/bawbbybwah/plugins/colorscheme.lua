return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			styles = {
	-- 				italic = false,
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("rose-pine")
	-- 	end,
	-- },
	{
		"savq/melange-nvim",
		name = "melange",
		priority = 1000,
		config = function()
			-- require("melange").setup({})
			vim.cmd.colorscheme("melange")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	-- 	loctvl842
	-- /
	-- monokai-pro.nvim-- },
	-- {
	-- 	"loctvl842/monokai-pro.nvim",
	-- 	name = "monokai-pro",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("monokai-pro").setup({
	-- 			filter = "classic",
	-- 		})
	-- 		vim.cmd.colorscheme("monokai-pro")
	-- 	end,
	-- },
}
