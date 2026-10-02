# Neovim config

Minimal Neovim 0.12+ config using [lazy.nvim](https://github.com/folke/lazy.nvim).

## Layout

```
init.lua                 entry point
lua/config/
  options.lua            editor options, transparent background
  keymaps.lua            general keymaps
  autocmds.lua           yank highlight, restore cursor, trim whitespace
  lazy.lua               lazy.nvim bootstrap
lua/plugins/
  lsp.lua                mason, lspconfig, blink.cmp
  treesitter.lua         nvim-treesitter (main branch)
  telescope.lua          telescope + fzf-native
  ui.lua                 theme, lualine, indent-blankline, gitsigns
```

## Languages

Go, C, Rust, Lua, Python, HTML, CSS, JavaScript, TypeScript, Markdown.
LSP servers are installed by Mason on first launch: `gopls`, `clangd`,
`rust_analyzer`, `pyright`, `lua_ls`, `html`, `cssls`, `ts_ls`, `marksman`.

## Requirements

- Neovim 0.12+
- `git`, `gcc`, `make` (plugins, telescope-fzf-native)
- `tree-sitter-cli` (treesitter parsers): `sudo pacman -S tree-sitter-cli`
- `npm` (some language servers)

## Keymaps

Leader is `<space>`.

| Key | Action |
| --- | --- |
| `<C-y>` | Yank to system clipboard |
| `<space>.` | Open file manager (`:Ex`) |
| `<C-d>` / `<C-u>` | Scroll and center |
| `<C-h/j/k/l>` | Move between windows |
| `<Esc>` | Clear search highlight |
| `gd` / `gr` / `K` | Definition / references / hover docs |
| `<leader>rn` / `<leader>ca` | Rename / code action |
| `<leader>e` | Diagnostic popup |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>ff` / `fg` / `fb` / `fh` | Telescope: files / grep / buffers / help |
| `<leader>fd` / `fs` | Telescope: diagnostics / document symbols |
| `[h` / `]h` | Previous / next git hunk |
| `<leader>hp` / `hr` / `hb` | Preview / reset hunk, blame line |

Completion (blink.cmp default preset): `<C-space>` open menu, `<C-n>`/`<C-p>`
select, `<C-y>` accept, `<C-e>` close.

## Colorscheme

`base16-tomorrow-night` via [base16-nvim](https://github.com/RRethy/base16-nvim),
with a transparent background.
