# gruber-darker-renaissance

_A dark Neovim colorscheme_

> **Note**
> Work in progress

## Installation

### Lazy

```lua
{
  dir = "~/Work/gruber-darker-renaissance",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruber-darker-renaissance").setup({})
    vim.cmd.colorscheme("gruber-darker-renaissance")
  end,
}
```

## Configuration

Call `setup()` before loading the colorscheme. Options are merged with the defaults.

### Defaults

```lua
require("gruber-darker-renaissance").setup({
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  invert = {
    signs = false,
    tabline = false,
    visual = false,
  },
  undercurl = true,
  underline = true,
  transparent = false, -- don't set background colors
  terminal_colors = true, -- set `g:terminal_color_*`
  sidebars = { "qf", "help" }, -- filetypes with the darker sidebar background
  plugins = {
    blink = true,
    fff = true,
    fzf = true,
    gitsigns = true,
    leap = true,
    mini_icons = true,
    multicursor = true,
  },
  ---@param colors GruberDarkerRenaissanceColors
  on_colors = function(colors) end,
  ---@param highlights table<string, vim.api.keyset.highlight|string>
  ---@param colors GruberDarkerRenaissanceColors
  on_highlights = function(highlights, colors) end,
})
```

### Overriding colors and highlights

```lua
require("gruber-darker-renaissance").setup({
  on_colors = function(c)
    c.syntax.keyword = c.red
  end,
  on_highlights = function(hl, c)
    hl.FzfLuaTitle = { fg = c.black, bg = c.green }
    hl.FzfLuaDirPart = "Comment" -- a string value is a link
  end,
})
```

## Extras

Themes for other tools, generated from the same palette by `make extras`:

- **Ghostty** — `extras/ghostty/gruber-darker-renaissance`: link it into
  `~/.config/ghostty/themes/` and set `theme = gruber-darker-renaissance`.
- **herdr** — `extras/herdr/gruber-darker-renaissance.toml`: herdr cannot include
  a file, so paste or template it into `~/.config/herdr/config.toml`.
- **lazygit** — `extras/lazygit/gruber-darker-renaissance.yml`: add it to
  `LG_CONFIG_FILE`, which merges a comma-separated list of config files.

## Structure

```
colors/gruber-darker-renaissance.lua  entry point for :colorscheme
lua/gruber-darker-renaissance/
  init.lua                      setup() / load()
  config.lua                    options and defaults
  palette.lua                   raw palette
  colors.lua                    semantic colors (ui, syntax, diag, git) built from the palette
  terminal.lua                  :terminal colors
  extras/                       ghostty, herdr, lazygit renderers
  groups/
    init.lua                    collects groups, toggles plugins
    editor.lua                  UI (:h highlight-groups)
    syntax.lua                  legacy Vim syntax (:h group-name)
    treesitter.lua              tree-sitter captures
    semantic_tokens.lua         LSP semantic tokens
    diagnostics.lua             vim.diagnostic
    plugins/                    one file per plugin
queries/                        tree-sitter query extensions (;extends)
extras/                         generated themes, see Extras
```

## Development

```sh
make check  # stylua + a headless load that fails on an unresolved link
```

Contributor rules are in [AGENTS.md](AGENTS.md).

## Credits

These repositories were great knowledge sources and their
inspiration helped immensely with the development of this plugin.

- [blazkowolf/gruber-darker.nvim][gruber-darker-nvim]

[gruber-darker-nvim]: https://github.com/blazkowolf/gruber-darker.nvim
