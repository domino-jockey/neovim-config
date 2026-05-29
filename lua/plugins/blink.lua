require('blink.cmp').setup({
	fuzzy = { implementation = 'prefer_rust_with_warning' },
	signature = { enabled = true },
	keymap = {
		preset = "super-tab",
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		}
	},
	cmdline = {
		keymap = { preset = 'inherit' },
		completion = { menu = { auto_show = true } },
	},
	sources = { default = { "lsp" } }
})
