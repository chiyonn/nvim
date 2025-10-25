-- Autocommands configuration

-- Python formatting on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.py",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

-- Python-specific indentation settings (4 spaces instead of default 2)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = true
    end,
})

-- Set default filetype to markdown for empty buffers
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.bo.filetype == "" and vim.fn.expand("%") == "" then
            vim.bo.filetype = "markdown"
        end
    end,
})

-- Auto-detect Nomad files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.nomad", "*.nomad.hcl"},
    callback = function()
        vim.bo.filetype = "hcl"
    end,
})

-- SMB filesystem specific settings
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "/Volumes/notes/*",
    callback = function()
        -- Reduce file change detection frequency
        vim.opt_local.updatetime = 3000
        -- Ignore external changes
        vim.opt_local.autoread = false
    end,
})