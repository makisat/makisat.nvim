local augroup = vim.api.nvim_create_augroup("UserAutocmds", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup,
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.fn.winrestview(view)
    end,
})
