require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	},
	refactor = {
		highlight_definitions = {
			enable = true,
			clear_on_cursor_move = true,
		},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	},
})

local vim = vim
local opt = vim.opt

-- za: toggle
-- zR: open all
-- zM: close all
vim.cmd("set nofoldenable");
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
