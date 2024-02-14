local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.snippets = {
    all = {
        ls.parser.parse_snippet("expand", "-- this was expanded"),
    },
}

vim.keymap.set({ 'i', 's' }, "<A-i>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    else
        vim.api.nvim_input("<S-Tab>")
    end
end, { silent = true })

-- lua

ls.add_snippets("lua", {
    s("hello", {
        t('print("hello world")')
    })
})

ls.add_snippets("rust", {
    s("pl", {
        t('println!("'), i(1, 'text'), t('");'),
    }),
})

ls.add_snippets("typescript", {
    s("fn", {
        t("function "), i(1, "name"), t("("), i(2, "arguments"), t("): "), i(3, "return"), t({" {", "	"}), i(4, "content"), t({"", "}"})
    })
})

ls.add_snippets("c", {
    s("pl", {
        t('printf("'), i(1, 'text'), t('\\n"'), i(2, ''), t(');')
    }),

    s("for", {
        t('for (int i = 0; i < '), i(1, 'len'), t({';  i++) {', '	'}), i(2, "content"), t({"", "}"})
    })
})

ls.add_snippets("go", {
    s("init", {
        t({'package main', '', 'import (', '	'}),
        i(1, 'imports'),
        t({'', ')', '', 'func main() {', '	'}),
        i(2, 'main'),
        t({'', '}'}),
    }),
    s("pl", {
        t('fmt.Println("'), i(1, 'text'), t('")'),
    })
})

ls.filetype_extend("typescriptreact", { "html" })
ls.filetype_extend("javascriptreact", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()
