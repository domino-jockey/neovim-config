vim.diagnostic.config({
	virtual_text = true,
	float = {
		source = false,
		header = "",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = {
                library = { vim.env.VIMRUNTIME },
                checkThirdParty = false,
            },
		}
	}
})
vim.lsp.config("pyright", {
  handlers = {
    -- Filter out noisy Pyright progress notifications
    ['$/progress'] = function() end,
  },
})

vim.lsp.enable({
	"lua_ls",
	"pyright",
})
