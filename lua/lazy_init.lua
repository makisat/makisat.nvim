-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- colorscheme
	{"catppuccin/nvim", name = "catppuccin", priority = 1000},
	-- "morhetz/gruvbox",
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	-- lsp
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- auto completion
	"hrsh7th/nvim-cmp",
	'hrsh7th/cmp-nvim-lsp',
	-- snippet
	"L3MON4D3/LuaSnip",
	-- indent visibility
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	-- comment
	{ "numToStr/Comment.nvim", opts = {}, lazy = false, },
	-- auto pair
	{ "jiangmiao/auto-pairs" },
	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-refactor",
	-- toggleterm
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	-- telescope
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	-- vim-surround
	{ "kylechui/nvim-surround", version = "*", event = "VeryLazy" },
}, opts)
