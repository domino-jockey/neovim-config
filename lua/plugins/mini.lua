require("mini.pairs").setup()
require("mini.files").setup({
	mappings = {
		go_in = "<CR>",
		go_in_plus = "L",
		go_out = "-",
		go_out_plus = "H",
	},
})

require("mini.notify").setup()
require("mini.pick").setup()
require("mini.extra").setup()
