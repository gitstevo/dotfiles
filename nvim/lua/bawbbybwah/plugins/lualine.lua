local function lualine_b_function()
	local repo = string.sub(vim.trim(vim.fn.system("git remote get-url origin")), 0, -5) .. "/tree/"
	local branch = vim.trim(vim.fn.system("git branch --show-current"))
	local path = repo .. branch
	local command = string.format("open %s", path)
	vim.fn.system(command)
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		lualine.setup({
			options = {
				theme = "auto",
				icons_enabled = true,
			},
			sections = {
				lualine_a = {
					{},
				},
				lualine_b = {
					{
						"branch",
						on_click = lualine_b_function,
					},
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{
						"filename",
						path = 4,
					},
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "none", bg = "none" },
					},
				},
				lualine_y = { { fg = "none", bg = "none" } },
				lualine_z = { { fg = "none", bg = "none" } },
			},

			inactive_sections = {
				lualine_b = { "branch" },
				lualine_c = { { "filename", path = 4 } },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
