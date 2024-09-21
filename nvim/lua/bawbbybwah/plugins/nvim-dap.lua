return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"nvim-neotest/neotest",
				"nvim-neotest/nvim-nio",
				"rcarriga/nvim-dap-ui",
				"leoluz/nvim-dap-go",
			},
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			require("dap-go").setup()
			dapui.setup({
				controls = {
					enabled = true,
				},
			})
			dap.adapters.dart = {
				type = "executable",
				command = "dart",
				args = { "debug_adapter" },
			}
			dap.adapters.flutter = {
				type = "executable",
				command = "flutter",
				args = { "debug_adapter" },
			}
			dap.configurations.dart = {
				{
					type = "dart",
					request = "launch",
					name = "Launch dart",
					dartSdkPath = "/Users/steve/development/flutter/bin/cache/dart-sdk/bin/dart",
					flutterSdkPath = "/Users/steve/development/flutter/bin/flutter",
					program = "${workspaceFolder}/lib/main.dart",
					cwd = "${workspaceFolder}",
				},
				{
					type = "flutter",
					request = "launch",
					name = "Launch flutter",
					dartSdkPath = "/Users/steve/development/flutter/bin/cache/dart-sdk/bin/dart",
					flutterSdkPath = "/Users/steve/development/flutter/bin/flutter",
					program = "${workspaceFolder}/lib/main.dart",
					cwd = "${workspaceFolder}",
				},
			}

			dap.set_log_level("INFO")
			dap.set_exception_breakpoints({ "raised", "uncaught" })

			vim.keymap.set("n", "<leader>dp", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<leader>dw", function()
				dap.watch()
			end)
			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end)
			vim.keymap.set("n", "<leader>do", function()
				dapui.open()
			end)
			vim.keymap.set("n", "<leader>dq", function()
				dapui.close()
			end)
		end,
	},
}
