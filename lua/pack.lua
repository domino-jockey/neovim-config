vim.pack.add({
    { src = "https://github.com/folke/tokyonight.nvim" }, -- theme
    { src = "https://github.com/nvim-lualine/lualine.nvim" }, -- lualine
    { src = "https://github.com/nvim-mini/mini.nvim" }, -- mini
    { src = "https://github.com/folke/snacks.nvim" }, -- snacks
    { src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- icons
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- treesitter
    { src = "https://github.com/neovim/nvim-lspconfig" }, -- lsp (nvim-lspconfig)
    { src = "https://github.com/mason-org/mason.nvim" }, -- lsp (mason)
	{ src = "https://github.com/saghen/blink.cmp" , version = vim.version.range("^1") }
})

require("nvim-treesitter").install { "python" }
require("mason").setup()
require("plugins.tokyonight")
require("plugins.lualine")
require("plugins.mini")
require("plugins.snacks")
require("plugins.blink")
