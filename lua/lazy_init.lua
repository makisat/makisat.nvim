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
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	-- indent visibility
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	-- comment
	{ "numToStr/Comment.nvim", opts = {}, lazy = false, },
	-- auto pair
	-- { "jiangmiao/auto-pairs" },
	-- auto pair alt
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	-- treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-refactor",
	-- toggleterm
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	-- telescope
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	-- vim-surround
	{ "kylechui/nvim-surround", version = "*", event = "VeryLazy" },
	{ "vim-airline/vim-airline", dependencies = { "vim-airline/vim-airline-themes" } },
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }},
}, opts)

