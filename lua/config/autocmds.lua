local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text
autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.hl.on_yank { higroup = 'IncSearch', timeout = 200 }
    end,
})
-- Show command line completions
autocmd("CmdlineChanged", {
	pattern = ":",
	callback = function()
		vim.fn.wildtrigger()
	end,
})

