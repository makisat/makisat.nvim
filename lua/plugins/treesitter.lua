local ts_config = {
    opts = {
        ensure_installed = { 'bash', 'html', 'css', 'lua', 'luadoc', 'markdown', 'c', 'cpp', 'rust', 'go', 'javascript', 'typescript' },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },

    func = function(_, opts)
        require('nvim-treesitter.install').prefer_git = true
        ---@diagnostic disable-next-line: missing-fields
        require('nvim-treesitter.configs').setup(opts)
    end
}

return ts_config
