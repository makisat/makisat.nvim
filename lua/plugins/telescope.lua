require("telescope").setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--trim" -- add this value
		},
	},
	pickers = {
		find_files = {
			find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
		},
	},
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', "<cmd>Telescope find_files find_command=fd,--hidden<CR>", {})
vim.keymap.set('n', '<c-g>', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
