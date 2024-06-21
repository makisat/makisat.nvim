local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("rust", {
    s("prln", {
        t('println!("'), i(1, 'text'), t('");'),
    }),
})

ls.add_snippets("typescript", {
    s("fn", {
        t("function "), i(1, "name"), t("("), i(2, "arguments"), t("): "), i(3, "return"), t({" {", "	"}), i(4, "content"), t({"", "}"})
    }),

    s("prln", {
        t('console.log('), i(1, 'text'), t(')'),
    }),
})

ls.add_snippets("c", {
    s("prln", {
        t('printf("'), i(1, 'text'), t('\\n"'), i(2, ''), t(');')
    }),

    s("for", {
        t('for (int i = 0; i < '), i(1, 'len'), t({';  i++) {', '	'}), i(2, "content"), t({"", "}"})
    })
})

ls.add_snippets("cpp", {
    s("prln", {
        t('std::cout << '), i(1, 'text'), t(' << std::endl;')
    }),
})

ls.add_snippets("go", {
    s("init", {
        t({'package main', '', 'import (', '	'}),
        i(1, 'imports'),
        t({'', ')', '', 'func main() {', '	'}),
        i(2, 'main'),
        t({'', '}'}),
    }),
    s("prln", {
        t('fmt.Println("'), i(1, 'text'), t('")'),
    })
})

ls.filetype_extend("typescriptreact", { "html" })
ls.filetype_extend("javascriptreact", { "html" })
require("luasnip.loaders.from_vscode").lazy_load()
