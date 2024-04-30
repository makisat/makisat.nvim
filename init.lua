require("options")
require("keymaps")
require("utils")

-- install lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup({
    -- auto detect and set indent
    "tpope/vim-sleuth",
    -- "gc" to comment visual regions/lines
    { "numToStr/Comment.nvim", opts = {} },
    -- git signs
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        },
    },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        event = "VimEnter",
        branch = "0.1.x",
        dependencies = {
            -- useful functions such as path manipulation, ui(notification), and advanced clipboard
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                cond = function()
                    return vim.fn.executable("make") == 1
                end,
            },
            { "nvim-telescope/telescope-ui-select.nvim" },
            -- icons
            { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
        },
    },

    -- LSP Configuration & Plugins
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- install mason
            { "williamboman/mason.nvim", config = true },
            "williamboman/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",

            -- notification
            { "j-hui/fidget.nvim", opts = {} },

            -- lsp for neovim lua
            { "folke/neodev.nvim", opts = {} },
        },
    },

    -- Autoformat
    -- {
    --     'stevearc/conform.nvim',
    --     lazy = false,
    --     keys = require("plugins.conform").keys,
    --     opts = require("plugins.conform").opts
    -- },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            {
                'L3MON4D3/LuaSnip',
                build = (function()
                    if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
                        return
                    end
                    return 'make install_jsregexp'
                end)(),
                dependencies = {
                    {
                        -- snippets
                        'rafamadriz/friendly-snippets',
                        config = function()
                            require('luasnip.loaders.from_vscode').lazy_load()
                        end,
                    },
                },
            },

            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
        },
    },

    -- colorscheme
    { 'folke/tokyonight.nvim', priority = 1000, opts = {} },

    -- surround
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        opts = {},
    },

    -- status line
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },

    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        opts = require("plugins/treesitter").opts,
        config = require("plugins/treesitter").func,
    },

    -- auto pairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
    }
}, {
    ui = {
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 ',
        },
    }
})


require("plugins.telescope")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.colorscheme")
require("plugins.autopairs")
require("plugins.snippets")
