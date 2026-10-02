local map = vim.keymap.set

map({ "n", "v" }, "<C-y>", '"+y', { desc = "Yank to system clipboard" })

map({ "n", "v" }, "<space>.", ':Ex<newline>', { desc = "Open file manager" })

map({ "n", "v" }, "<C-d>", '<C-d>zz', { desc = "Scroll down and center" })
map({ "n", "v" }, "<C-u>", '<C-u>zz', { desc = "Scroll up and center" })

map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
