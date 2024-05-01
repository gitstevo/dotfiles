return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"rcarriga/nvim-dap-ui",
			},
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup({
				controls = {
					enabled = false,
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
					dartSdkPath = "/Users/steve/development/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
					flutterSdkPath = "/Users/steve/development/flutter/bin/flutter",
					program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
					cwd = "${workspaceFolder}",
				},
				{
					type = "flutter",
					request = "launch",
					name = "Launch flutter",
					dartSdkPath = "/Users/steve/development/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
					flutterSdkPath = "/Users/steve/development/flutter/bin/flutter",
					program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
					cwd = "${workspaceFolder}",
				},
			}

			dap.set_log_level("TRACE")

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
