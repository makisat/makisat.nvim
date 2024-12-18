local set = vim.keymap.set

-- navigation
set('n', '<leader>.', '<cmd>Ex<cr>')
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

-- harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

-- Key mappings
vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = 'Harpoon: Add file' })
vim.keymap.set('n', '<leader>hm', ui.toggle_quick_menu, { desc = 'Harpoon: Toggle menu' })
vim.keymap.set('n', '<leader>h1', function() ui.nav_file(1) end, { desc = 'Harpoon: Go to file 1' })
vim.keymap.set('n', '<leader>h2', function() ui.nav_file(2) end, { desc = 'Harpoon: Go to file 2' })
vim.keymap.set('n', '<leader>h3', function() ui.nav_file(3) end, { desc = 'Harpoon: Go to file 3' })
vim.keymap.set('n', '<leader>h4', function() ui.nav_file(4) end, { desc = 'Harpoon: Go to file 4' })
