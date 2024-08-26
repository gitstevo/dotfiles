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
	-- {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "Macchiato",
			})
			vim.cmd.colorscheme("catppuccin")
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	-- {
	-- 	"vague2k/vague.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("vague").setup({})
	-- 		vim.cmd("colorscheme vague")
	-- 	end,
	-- },
	-- },
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("github-theme").setup({})
	-- 		vim.cmd("colorscheme github_dark")
	-- 		-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 	end,
	-- },
	-- {
	-- 	"savq/melange-nvim",
	-- 	name = "melange",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- require("melange").setup({})
	-- 		vim.cmd.colorscheme("melange")
	-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 	end,
	-- },
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
