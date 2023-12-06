
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup(
	
)

require("lspconfig").rust_analyzer.setup({

})

require("lspconfig").gopls.setup({

})
