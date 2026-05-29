require("mini.files").setup()
require("mini.pick").setup({
	window = {
		config = {
			border = "rounded",
			width  = math.floor(vim.o.columns * 0.60),
			height = math.floor(vim.o.lines * 0.60),
		},
	},
})
require("mini.notify").setup({})
require("mini.pairs").setup({})
