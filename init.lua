vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.netrw_findcmd = 'fd'

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>vsp<CR><c-w><c-w><cmd>Explore<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>bw<CR>', { noremap = true, silent = true })

-- toggleterm
-- vim.api.nvim_set_keymap('t', '<esc>', '<c-\\><c-n>', { noremap = true, silent = true })

require("lazy_init")

require("options")

-- plugins
require("plugins.catppuccin")
require("plugins.mason")
require("plugins.nvim-cmp")
require("plugins.indent-blankline")
require("plugins.comment")
require("plugins.treesitter")
require("plugins.toggleterm")
require("plugins.telescope")
require("plugins.surround")
