return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	ft = "dart",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"bawbbybwaharc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		require("flutter-tools").setup_project({
			{
				name = "Launch Main in Debug with .env",
				flutter_mode = "debug",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Main in Profile with .env",
				flutter_mode = "profile",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Main in Release with .env",
				flutter_mode = "release",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Main in Debug",
				flutter_mode = "debug",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Main in Profile",
				flutter_mode = "profile",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Main in Release",
				flutter_mode = "release",
				request = "launch",
				type = "dart",
				program = "${workspaceFolder}/lib/main.dart --define-from-file .env",
			},
			{
				name = "Launch Example",
				request = "launch",
				type = "dart",
				flutterMode = "debug",
				cwd = "${workspaceFolder}/example",
			},
			{
				name = "Launch Widgetbook",
				request = "launch",
				type = "dart",
				flutterMode = "profile",
				cwd = "${workspaceFolder}/widgetbook/widgetbook.dart",
			},
		})
		local opts = { noremap = true, silent = true }
		local set = vim.keymap.set
		require("flutter-tools").setup({
			debugger = {
				enabled = true,
				exceptionbreakpoints = {},
				registerconfigurations = function(paths) end,
			},
			fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
			closing_tags = {
				enabled = false,
			},
			dev_tools = {
				autostart = true,
			},
			dev_log = {
				open_cmd = "sp",
			},
			root_patterns = { ".git", "pubspec.yaml" },
			lsp = {
				color = {
					enabled = true,
				},
				settings = {
					enableSnippets = true,
					renameFilesWithClasses = "prompt",
					analysisExcludedFolders = {
						vim.fn.expand("~") .. "/.pub-cache/",
					},
					completeFunctionCalls = true,
					experimentalRefactors = true,
				},

				on_attach = function(client, bufnr)
					client.server_capabilities.semanticTokensProvider = nil

					opts.buffer = bufnr

					-- flutter-tools mappings
					set("n", "Fc", "<cmd>Telescope flutter commands<CR>", opts) -- show definition, references
					set("n", "Fr", "<cmd>FlutterRun<CR>", opts) -- show definition, references
					set("n", "Fe", "<cmd>FlutterEmulators<CR>", opts) -- show definition, references
					set("n", "FR", "<cmd>FlutterRestart<CR>", opts) -- show definition, references
					set("n", "Fq", "<cmd>FlutterQuit<CR>", opts) -- show definition, references
					set("n", "Fd", "<cmd>FlutterDevTools<CR>", opts) -- show definition, references

					-- normal lsp mappings

					opts.desc = "Show LSP references"
					set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

					opts.desc = "Go to declaration"
					set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

					opts.desc = "Show LSP definitions"
					set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

					opts.desc = "Show LSP implementations"
					set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

					opts.desc = "Show LSP type definitions"
					set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

					opts.desc = "See available code actions"
					set({ "n", "v" }, "<leader>fa", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

					opts.desc = "Smart rename"
					set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

					opts.desc = "Show buffer diagnostics"
					set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

					opts.desc = "Show line diagnostics"
					set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

					opts.desc = "Show documentation for what is under cursor"
					set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

					opts.desc = "Restart LSP"
					set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
				end,
			},
		})
	end,
}
