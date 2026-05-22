require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	keymap = { preset = "super-tab" },
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200
		}
	},
})
