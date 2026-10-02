return {
    {
        "RRethy/base16-nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local transparent = {
                "Normal", "NormalNC", "NormalFloat", "FloatBorder", "SignColumn",
                "LineNr", "CursorLineNr", "EndOfBuffer", "FoldColumn", "StatusLine",
                "StatusLineNC", "WinSeparator", "Pmenu", "TabLine", "TabLineFill",
                "MsgArea", "GitSignsAdd", "GitSignsChange", "GitSignsDelete",
            }
            vim.api.nvim_create_autocmd("ColorScheme", {
                group = vim.api.nvim_create_augroup("TransparentBg", { clear = true }),
                callback = function()
                    for _, group in ipairs(transparent) do
                        local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
                        hl.bg = nil
                        hl.ctermbg = nil
                        vim.api.nvim_set_hl(0, group, hl)
                    end
                end,
            })
            vim.cmd.colorscheme("base16-tomorrow-night")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = { options = { theme = "auto", globalstatus = true } },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            on_attach = function(bufnr)
                local gs = require("gitsigns")
                local map = function(keys, func, desc)
                    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
                end
                map("]h", function() gs.nav_hunk("next") end, "Next hunk")
                map("[h", function() gs.nav_hunk("prev") end, "Prev hunk")
                map("<leader>hp", gs.preview_hunk, "Preview hunk")
                map("<leader>hr", gs.reset_hunk, "Reset hunk")
                map("<leader>hb", gs.blame_line, "Blame line")
            end,
        },
    },
}
