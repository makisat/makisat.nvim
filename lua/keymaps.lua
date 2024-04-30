-- highlight on search & escape to clear
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- diagnostic keymaps
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- open netrw
vim.keymap.set('n', '<leader>.', '<cmd>Ex<CR>', { desc = 'Open netrw' })

-- navigate buffers
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>bc', '<cmd>bd<CR>', { desc = 'Close buffer' })

-- navigate between panes
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- split panes
vim.keymap.set('n', '<leader>s', '<cmd>vsplit<CR><cmd>Ex<CR>', { desc = 'Create new tab' })
vim.keymap.set('n', '<leader>v', '<cmd>split<CR><cmd>Ex<CR>', { desc = 'Create new tab' })

-- tab navigation
vim.keymap.set('n', '<leader>n', '<cmd>tabnew<CR><cmd>Ex<CR>', { desc = 'Create new tab' })
vim.keymap.set('n', '<C-Right>', '<cmd>tabn<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<C-Left>', '<cmd>tabp<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<C-S-Right>', '<cmd>tabmove +<CR>', { desc = 'Move tab right' })
vim.keymap.set('n', '<C-S-Left>', '<cmd>tabmove -<CR>', { desc = 'Move tab left' })
vim.keymap.set('n', '<leader>1', '1gt', { desc = 'Go to tab 1' })
vim.keymap.set('n', '<leader>2', '2gt', { desc = 'Go to tab 2' })
vim.keymap.set('n', '<leader>3', '3gt', { desc = 'Go to tab 3' })
vim.keymap.set('n', '<leader>4', '4gt', { desc = 'Go to tab 4' })
vim.keymap.set('n', '<leader>6', '6gt', { desc = 'Go to tab 6' })

-- register stuff
vim.keymap.set('v', '<C-y>', '"+y', { desc = 'Yank to clipboard' })
-- vim.keymap.set({'n', 'v'}, 'y', '"yy', { desc = 'Yank to "y' })
-- vim.keymap.set({'n', 'v'}, 'yy', '"yyy', { desc = 'Yank to "y' })
-- vim.keymap.set({'n', 'v'}, 'd', '"dd', { desc = 'Delete to "d' })
-- vim.keymap.set({'n', 'v'}, 'dd', '"ddd', { desc = 'Delete to "d' })
-- vim.keymap.set({'n', 'v'}, 'c', '"dd', { desc = 'Delete to "d then insert' })
-- vim.keymap.set({'n', 'v'}, 'cc', '"ddd', { desc = 'Delete to "d then insert' })
-- vim.keymap.set({'n', 'v'}, 'p', '"yp', { desc = 'Paste from "y' })
-- vim.keymap.set({'n', 'v'}, 'P', '"dp', { desc = 'Paste from delete' })
