-- relative line number
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.guicursor = ""

vim.opt.scrolloff = 6
-- vim.opt.cursorcolumn = true

vim.opt.wrap = false

vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.autoindent = true
vim.opt.mouse = 'a'
vim.cmd("set noexpandtab")
-- vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

function check_filetype()
	local filetype = vim.bo.filetype
	if filetype == "typescriptreact" or filetype == "javascriptreact" then
		vim.opt.tabstop = 2
		vim.opt.softtabstop = 2
		vim.opt.shiftwidth = 2
	else
		vim.opt.tabstop = 4
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
	end 
end
