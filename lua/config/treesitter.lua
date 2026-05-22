-- Enable treesitter highlighting for common filetypes
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua", "vim", "vimdoc",
        "javascript", "typescript", "python",
        "html", "css", "json", "markdown",
    },
    callback = function(ev)
        if vim.treesitter.language.add(vim.bo[ev.buf].filetype) then
            vim.treesitter.start(ev.buf) -- start highlighting
        end
    end,
})
