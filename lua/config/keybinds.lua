vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd.packadd("nvim.undotree")

local keymap = vim.keymap.set

keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down in visual selection" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up in visual selection" })

keymap("n", "<leader>r", ":restart<CR>", { desc = "Restart Neovim" })
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":qa<CR>", { desc = "Quit all" })

keymap("n", "<leader>ya", ":%y+<CR>", { desc = "Yank all lines to clipboard" })

keymap("n", "<leader>u", require("undotree").open, { desc = "Toggle builtin undotree" })

keymap("n", "<leader>e", ":lua MiniFiles.open()<CR>")
keymap("n", "<leader>-", ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<CR>")
keymap("n", "<leader>ff", ":Pick files<CR>", { desc = "Pick files" })
keymap("n", "<leader>fg", ":Pick grep_live<CR>", { desc = "Pick grep live" })
keymap("n", "<leader>fh", ":Pick help<CR>", { desc = "Pick help docs" })
keymap("n", "<leader>fk", ":Pick keymaps<CR>", { desc = "Pick all keymaps "})
