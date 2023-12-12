local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.snippets = {
	all = {
		ls.parser.parse_snippet("expand", "-- this was expanded"),
	},
}

vim.keymap.set({ 'i', 's' }, "<S-Tab>", function ()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

-- lua
ls.add_snippets("lua", {
	s("hello", {
		t('print("hello world")')
	})
})
-- rust
ls.add_snippets("rust", {

})

require("luasnip.loaders.from_vscode").lazy_load()

