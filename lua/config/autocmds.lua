local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text
autocmd('TextYankPost', {
    pattern = '*',
	callback = function()
        vim.hl.on_yank { higroup = 'IncSearch', timeout = 200 }
    end,
})
vim.api.nvim_create_autocmd('User', {
	pattern = 'MiniFilesBufferCreate',
	callback = function(args)
		vim.keymap.set('n', '<leader>g', function()
			local path = (MiniFiles.get_fs_entry() or {}).path
			if path == nil then return vim.notify('Cursor is not on valid entry') end
			vim.fn.chdir(vim.fs.dirname(path))
			MiniFiles.open()
		end, { buffer = args.data.buf_id, desc = 'Set cwd' })
	end,
})
