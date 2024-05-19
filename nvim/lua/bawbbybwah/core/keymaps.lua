vim.g.mapleader = " "

local set = vim.keymap.set

--scrolling rebinds
set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down on half page down" })
set("n", "<C-u>", "<C-u>zz", { desc = "Scroll down on half page up" })

--change enter key to save in normal mode
set("n", "<Enter>", "<cmd>update<CR>", { desc = "Save file on enter" })

--set line numbers/relative line numbers
set("n", "<leader>sl", ":set relativenumber!<CR>", { desc = "switch line/relative number" })

--clear highlighting after searching
set("n", "<leader>c/", ":nohlsearch<cr>", { desc = "Clear highlighting" })

--open git command
set("n", "<leader>git", ":Git ", { desc = "open :Git as a command to type" })

--Buffers
--Go Back to Last File --
set("n", "<leader>fp", "<cmd>b#<CR>", { desc = "Last Buffer" })

-- Move visual mode selected lines up and down
set("v", "N", ":m '>+1<CR>gv=gv")
set("v", "E", ":m '<-2<CR>gv=gv")

--Yank to system clipboard
set("n", "y", '"+y', { desc = "Yank to system clipboard" })

--Paste and don't copy over the clipboard
set("x", "<leader>p", [["_dP]])

--window management --
set("n", "<c-i>", "<c-w>l", { desc = "Move to right window" })
set("n", "<c-h>", "<c-w>h", { desc = "Move to left window" })
set("n", "<c-e>", "<c-w>k", { desc = "Move to top window" })
set("n", "<c-n>", "<c-w>j", { desc = "Move to bottom window" })
set("n", "<leader>q", "<c-w>q", { desc = "Quit window" })
set("n", "<leader>wh", ":split<CR>", { desc = "Split window horizontally" })
set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split window vertically" })

set("n", "<leader>gdv", function()
	vim.cmd("vsp")
	vim.cmd("Telescope lsp_definitions")
end, { desc = "Go to definition in vsplit" })

set("n", "<leader>gdh", function()
	vim.cmd("sp")
	vim.cmd("Telescope lsp_definitions")
end, { desc = "Go to definition in split" })

set("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Move to left window" })
set("t", "<C-n>", "<cmd>wincmd j<CR>", { desc = "Move to bottom window" })
set("t", "<C-e>", "<cmd>wincmd k<CR>", { desc = "Move to top window" })
set("t", "<C-i>", "<cmd>wincmd l<CR>", { desc = "Move to right window" })

--terminal management
set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal insert mode in terminal" })

--marks
--Set Marks for pages
set("n", "<leader>ma", "mA", { desc = "Go to marked buff A" })
set("n", "<leader>mb", "mB", { desc = "Go to marked buff B" })
set("n", "<leader>mc", "mC", { desc = "Go to marked buff C" })
set("n", "<leader>md", "mD", { desc = "Go to marked buff D" })
set("n", "<leader>me", "mE", { desc = "Go to marked buff D" })
set("n", "<leader>mf", "mF", { desc = "Go to marked buff D" })
--Go to mark
set("n", "<leader>'a", "'A", { desc = "Go to marked buff A" })
set("n", "<leader>'b", "'B", { desc = "Go to marked buff B" })
set("n", "<leader>'c", "'C", { desc = "Go to marked buff C" })
set("n", "<leader>'d", "'D", { desc = "Go to marked buff D" })
set("n", "<leader>'e", "'E", { desc = "Go to marked buff D" })
set("n", "<leader>'f", "'F", { desc = "Go to marked buff D" })
