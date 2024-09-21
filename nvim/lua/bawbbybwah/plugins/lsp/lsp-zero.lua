return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason-lspconfig.nvim",
		"antosha417/nvim-lsp-file-operations",
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap -- for conciseness

		-- local lspconfig = require("lspconfig")
		-- local opts = { noremap = true, silent = true }

		local lsp_attach = function(_, bufnr)
			local opts = { buffer = bufnr }

			-- keymap.set("n", "<leader>o", ":echo 'Test Keybind'<CR>", { desc = "Test Keybind" })
			keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
			keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
			keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
			keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
			keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
			keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
			keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
			keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
			keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
			keymap.set("n", "<leader>am", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lsp_zero.extend_lspconfig({
			sign_text = true,
			lsp_attach = lsp_attach,
			capabilities = capabilities,
		})

		-- 	opts.desc = "Show LSP references"
		-- 	keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
		--
		-- 	opts.desc = "Show LSP definitions"
		-- 	keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
		--
		-- 	opts.desc = "Show LSP implementations"
		-- 	keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
		--
		-- 	opts.desc = "Show LSP type definitions"
		-- 	keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
		--
		-- 	opts.desc = "See available code actions"
		-- 	keymap.set({ "n", "v" }, "<leader>am", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
		--
		-- 	opts.desc = "Smart rename"
		-- 	keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
		--
		-- 	opts.desc = "Show buffer diagnostics"
		-- 	keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
		--
		-- 	opts.desc = "Show line diagnostics"
		-- 	keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts) -- show diagnostics for line
		--
		-- 	opts.desc = "Go to previous diagnostic"
		-- 	keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
		--
		-- 	opts.desc = "Go to next diagnostic"
		-- 	keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
		--
		-- 	opts.desc = "Show documentation for what is under cursor"
		-- 	keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
		--
		-- 	opts.desc = "Restart LSP"
		-- 	keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
		-- end
		--
		-- used to enable autocompletion (assign to every lsp server config)

		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		-- local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		-- for type, icon in pairs(signs) do
		-- 	local hl = "DiagnosticSign" .. type
		-- 	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		-- end
		-- vim.diagnostic.config({ virtual_text = true })
		--
		-- lspconfig["pyright"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- })
		--
		-- lspconfig["rust_analyzer"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- })
		--
		-- lspconfig["gopls"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- 	single_file_support = true,
		-- 	cmd = { "gopls" },
		-- 	filetypes = { "go", "gomod", "gowork", "gotmpl" },
		-- 	root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
		-- 	settings = {
		-- 		gopls = {
		-- 			completeUnimported = true,
		-- 			usePlaceholders = true,
		-- 			analyses = {
		-- 				unusedparams = true,
		-- 			},
		-- 		},
		-- 	},
		-- })
		--
		-- lspconfig["jsonls"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- })
		--
		-- --configure lua server
		-- lspconfig["lua_ls"].setup({
		-- 	capabilities = capabilities,
		-- 	on_attach = on_attach,
		-- 	settings = { -- custom settings for lua
		-- 		Lua = {
		-- 			-- make the language server recognize "vim" global
		-- 			diagnostics = {
		-- 				globals = { "vim" },
		-- 			},
		-- 			workspace = {
		-- 				-- make language server aware of runtime files
		-- 				library = {
		-- 					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
		-- 					[vim.fn.stdpath("config") .. "/lua"] = true,
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- })
	end,
}
