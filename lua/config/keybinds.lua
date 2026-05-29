vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Visual Mode: Move lines
keymap("v", "J", "<cmd>m '>+1<CR>gv=gv", { desc = "Move lines down in visual selection" })
keymap("v", "K", "<cmd>m '<-2<CR>gv=gv", { desc = "Move lines up in visual selection" })

-- General Operations
keymap("n", "<leader>r", "<cmd>restart<CR>", { desc = "Restart Neovim" })
keymap("n", "<leader>w", "<cmd>w<CR>",       { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<CR>",       { desc = "Quit" })
keymap("n", "<leader>Q", "<cmd>qa!<CR>",     { desc = "Quit all without saving" })

-- Snacks Picker
keymap("n", "<leader>ff", function() MiniPick.builtin.files() end,   { desc = "Pick files" })
keymap("n", "<leader>fg", function() MiniPick.builtin.grep_live() end,    { desc = "Pick grep live" })
-- keymap("n", "<leader>fh", function() Snacks.picker.help() end,    { desc = "Pick help docs" })
-- keymap("n", "<leader>fk", function() Snacks.picker.keymaps() end, { desc = "Pick all keymaps" })

-- Clipboard Operations
keymap("v", "<leader>y", [["+y]],       { desc = "Copy selection to system clipboard" })
keymap("n", "<leader>ya", "<cmd>%y+<CR>", { desc = "Copy entire file to system clipboard" })

-- Explorer
keymap("n", "<leader>e", function() MiniFiles.open() end, { desc = "Open explorer" })

-- Window Navigation (Normal Mode)
keymap("n", "<C-h>", "<C-w>h", { desc = "Move focus to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move focus to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move focus to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move focus to right window" })

-- Window Navigation (Terminal Mode)
keymap("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Move focus to left window" })
keymap("t", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Move focus to lower window" })
keymap("t", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Move focus to upper window" })
keymap("t", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Move focus to right window" })

keymap("t", "<leader>q", [[<C-\><C-n><cmd>q<CR>]], { desc = "Close terminal" })
