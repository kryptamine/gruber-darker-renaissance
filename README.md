# gruber-darker-renaissance

_A dark, minimal Neovim colorscheme based on gruber-darker_

![gruber-darker-renaissance](assets/screenshot.png)

A pure black background with near-white names. Each hue has one shade: yellow
keywords, green strings, niagara blue functions, quartz types and constants,
warm ash gray comments. The accents share a lightness and saturation range, so
none of them stands out over the others.

Needs Neovim 0.10 or newer and nothing else.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "kryptamine/gruber-darker-renaissance",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruber-darker-renaissance").setup({})
    vim.cmd.colorscheme("gruber-darker-renaissance")
  end,
}
```

### Without a plugin manager

```lua
vim.pack.add({ "https://github.com/kryptamine/gruber-darker-renaissance" })
vim.cmd.colorscheme("gruber-darker-renaissance")
```

`vim.pack` needs Neovim 0.12; on older versions clone the repository into a
`pack/*/start/` directory on your `packpath`.

## Configuration

Call `setup()` before loading the colorscheme. Your options are merged over
the defaults.

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
  plugins = {}, -- every integration is on; set one to false, e.g. `snacks = false`
  on_colors = function(colors) end,
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

`c` holds the raw palette (`c.yellow`, `c.niagara`, `c.ash`) and the semantic
colors built from it (`c.syntax.*`, `c.diag.*`, `c.git.*`, `c.bg_float`); see
[palette.lua](lua/gruber-darker-renaissance/palette.lua) and
[colors.lua](lua/gruber-darker-renaissance/colors.lua).

Floats and the completion menu share the editor's black background, so they
read best with a border: set `vim.o.winborder` or the plugin's own `border`.

## Extras

Themes for other tools, generated from the same palette, are in `extras/`.
With lazy.nvim that is `~/.local/share/nvim/lazy/gruber-darker-renaissance/extras/`.

- Alacritty: link `extras/alacritty/gruber-darker-renaissance.toml` somewhere and add
  it to `general.import` in `alacritty.toml`.
- fish: link `extras/fish/gruber-darker-renaissance.theme` into
  `~/.config/fish/themes/` and add `fish_config theme choose
  gruber-darker-renaissance` to `config.fish`.
- foot (1.24+): add `include=` with the path to
  `extras/foot/gruber-darker-renaissance.ini` to `foot.ini`.
- Ghostty: link `extras/ghostty/gruber-darker-renaissance` into
  `~/.config/ghostty/themes/` and set `theme = gruber-darker-renaissance`.
- herdr: its config cannot include a file, so paste
  `extras/herdr/gruber-darker-renaissance.toml` into `~/.config/herdr/config.toml`.
- kitty: link `extras/kitty/gruber-darker-renaissance.conf` into
  `~/.config/kitty/themes/` and run `kitten themes`, or `include` it from
  `kitty.conf`.
- lazygit: add `extras/lazygit/gruber-darker-renaissance.yml` to
  `LG_CONFIG_FILE`, which takes a comma-separated list of config files.

## Credits

Gruber Darker was made for GNU Emacs by Jason Blevins, after John Gruber's
BBEdit theme. [blazkowolf/gruber-darker.nvim](https://github.com/blazkowolf/gruber-darker.nvim)
was a big help while writing this one.
