vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- move block of code
local set = vim.keymap.set
set("n", "<M-p>", "ddkP==", { desc = "Move the line up" })
set("n", "<M-n>", "ddp==", { desc = "Move the line down" })
set("v", "<M-p>", "dkP`[V`]=`[V`]", { desc = "Move the block of line up" })
set("v", "<M-n>", "dp`[V`]=`[V`]", { desc = "Move the block of line down" })


vim.cmd('command! Q q')
vim.cmd('command! W w')
