return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
        opts = {
            ensure_installed = {
                "gopls",
                "clangd",
                "rust_analyzer",
                "pyright",
                "lua_ls",
                "html",
                "cssls",
                "ts_ls",
                "marksman",
            },
            -- installed servers are enabled automatically
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            checkThirdParty = false,
                            library = { vim.env.VIMRUNTIME },
                        },
                    },
                },
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
                callback = function(ev)
                    local map = function(keys, func, desc)
                        vim.keymap.set("n", keys, func, { buffer = ev.buf, desc = desc })
                    end

                    map("gd", vim.lsp.buf.definition, "Go to definition")
                    map("gr", vim.lsp.buf.references, "References")
                    map("K", vim.lsp.buf.hover, "Hover docs")
                    map("<leader>rn", vim.lsp.buf.rename, "Rename")
                    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
                    map("[d", function() vim.diagnostic.jump({ count = -1 }) end, "Prev diagnostic")
                    map("]d", function() vim.diagnostic.jump({ count = 1 }) end, "Next diagnostic")
                    map("<leader>e", vim.diagnostic.open_float, "Show diagnostic")
                end,
            })
        end,
    },
    {
        "saghen/blink.cmp",
        version = "1.*",
        event = "InsertEnter",
        opts = {
            keymap = { preset = "default" },
            sources = { default = { "lsp", "path", "snippets", "buffer" } },
        },
    },
}
