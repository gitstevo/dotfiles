return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "Macchiato",
	-- 		})
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 		-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 	end,
	-- },
	-- {
	-- 	"zenbones-theme/zenbones.nvim",
	-- 	name = "zenbones",
	-- 	dependencies = "rktjmp/lush.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("zenbones")
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	name = "tokyonight",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	-- opts = {},
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			-- "storm", "night", "day", "deep", "cool"
	-- 			style = "storm",
	-- 		})
	-- 		vim.cmd.colorscheme("tokyonight")
	-- 	end,
	-- },
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
		"vague2k/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("vague").setup({})
			vim.cmd("colorscheme vague")
		end,
	},
}
