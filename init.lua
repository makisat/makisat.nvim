vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.netrw_findcmd = 'fd'

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', '<cmd>vsp<CR><c-w><c-w><cmd>Explore<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>bw<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>r', '<cmd>source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)

-- Create an autocommand group

vim.cmd("augroup MyGroup")
-- Clear any existing autocommands in the group
vim.cmd("autocmd!")
-- Add a new autocommand that runs your function on buffer change
vim.cmd("autocmd BufEnter * lua check_filetype()")
-- End the group
vim.cmd("augroup END")


-- toggleterm
-- vim.api.nvim_set_keymap('t', '<esc>', '<c-\\><c-n>', { noremap = true, silent = true })

require("lazy_init")

require("options")

-- require plugins

-- choose color schemes
-- require("plugins.catppuccin")
-- require("plugins.gruvbox")
require("plugins.tokyonight")

require("plugins.luasnip")
require("plugins.mason")
require("plugins.nvim-cmp")
require("plugins.indent-blankline")
require("plugins.comment")
require("plugins.treesitter")
require("plugins.toggleterm")
require("plugins.telescope")
require("plugins.surround")

