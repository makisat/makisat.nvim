local set = vim.opt

-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- indentation
set.smarttab = true
set.expandtab = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4

-- relative number && cursor
set.number = true
set.relativenumber = true
set.guicursor = ""

-- navigation
set.scrolloff = 8
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.mouse = 'a'

-- editing
set.wrap = false

-- other
set.termguicolors = true

-- change tab width if js or ts
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

vim.cmd("autocmd BufEnter * lua check_filetype()")
