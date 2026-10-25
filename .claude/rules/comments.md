---
description: How to write comments, and what never to comment
---

# Comments

Lua, and this repository's Lua. Comments here are in English, like everything
else written into the repository, whatever language the request was made in.

## Rules

- These rules cover every kind of comment: LuaLS annotations (`---@class`,
  `---@field`, `---@param`), doc comments above a function, and inline ones.
- Comment only where it is genuinely needed: a declaration or a block whose
  intent is not obvious at a glance. Obvious code gets none — a group module's
  `get` returning its groups needs no description beyond the area it covers.
- **A comment is at most three lines.** A hard cap. Anything longer belongs in
  AGENTS.md or README, with one line here pointing at it.
- A doc comment reads as a sentence, starting with `---`. Inline comments
  (`--`) need not be full sentences.
- LuaLS annotations are types, not prose: keep them, and keep them true. A
  `---@field` whose field is gone goes with it.
- Explain the gist of the thing the comment sits on: what it does, plus the why
  when that is not obvious. Never who calls it or when it runs — call sites
  move and the comment then lies.
- Never record provenance: which theme a color was taken from, which issue,
  which commit. That is what `git log` is for.
- Keep a comment that stops a reader "fixing" the code and breaking it: an
  empty group that is empty on purpose, an ordering that matters, a Neovim
  quirk the code works around.
- Plain language, plain words. If a sentence needs a second read, rewrite it
  shorter.
- Do not restate a line the code already states (`-- set the background`
  above `Normal = { bg = c.bg }`).
- A plugin integration opens with one line: the plugin's URL.
- A group, option or color deleted takes its comment with it.

## Examples

Bad, restates the code:

```lua
-- Normal text uses fg and bg
Normal = { fg = c.fg, bg = c.bg },
```

Bad, provenance:

```lua
-- Taken from tokyonight, see issue #12, tuned on 2026-10-25
bg_float = c.bg1,
```

Good, a why the code cannot state:

```lua
-- Tree-sitter is more granular for these
["@lsp.type.variable"] = {},
```

Good, stops a "fix" that would break merging:

```lua
-- Lists are replaced, not merged by index
if opts.sidebars then
```

Good, none at all:

```lua
DiffAdd = { fg = c.git.add },
DiffChange = { fg = c.git.change },
```

## Comment pass

Write the code first. As the last step before reporting, check the comments
this change added or touched against the rules above. Edit comments only, never
code.
