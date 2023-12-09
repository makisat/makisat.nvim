local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "lausnip" },
	},
	{
		{ name = "buffer" },
	})
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["rust_analyzer"].setup{
	capabilities = capabilities
}

require("lspconfig")["lua_ls"].setup{
	capabilities = capabilities
}

require("lspconfig")["tsserver"].setup{
	capabilities = capabilities
}

require("lspconfig")["eslint"].setup{
	capabilities = capabilities
}
