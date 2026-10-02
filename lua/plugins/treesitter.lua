return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local langs = {
            "go", "c", "rust", "lua", "vim", "vimdoc", "python", "html", "css",
            "javascript", "typescript", "tsx", "markdown", "markdown_inline",
        }
        require("nvim-treesitter").install(langs)

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(ev)
                if pcall(vim.treesitter.start, ev.buf) then
                    vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end
            end,
        })
    end,
}
