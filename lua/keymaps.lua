local set = vim.keymap.set

-- navigation
set('n', '<leader>e', '<cmd>E<cr>')
set({ 'n', 'i' }, '<C-s>', '<cmd>vsp<cr><C-W><C-W><cmd>E<cr>')
set("n", "<C-u>", "<C-u>zz")
set("n", "<C-d>", "<C-d>zz")

-- move line command
set("n", "<M-p>", "ddkP==")
set("n", "<M-n>", "ddp==")
set("v", "<M-p>", "dkP`[V`]=`[V`]")
set("v", "<M-n>", "dp`[V`]=`[V`]")

-- tab
set("n", "<leader>tn", function ()
	vim.api.nvim_command("tabnew")
	vim.api.nvim_command("Ex")
end)

set("n", "<M-l>", "<cmd>+tabnext<cr>")
set("n", "<M-h>", "<cmd>-tabnext<cr>")

-- yank to clipboard
set({ 'n', 'v' }, '<C-y>', '"+y')

-- lspconfig
vim.keymap.set('n', '<space>n', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
