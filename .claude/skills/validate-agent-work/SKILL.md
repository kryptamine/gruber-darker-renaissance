---
name: validate-agent-work
description: Use when finishing any change to this repository, or when the user says "validate", "check my work", "run checks", or "verify changes". Also use automatically after adding a group, an integration or an option, changing a color, or editing documentation here.
---

# Validate Agent Work

The rules live in [AGENTS.md](../../../AGENTS.md); this is the order to check
them in before handing work back.

## Steps

1. **See what changed** — the branch against `main`, and whatever is not
   committed yet:

   ```bash
   git diff --name-only main...HEAD
   git status --short
   ```

   Stage nothing: the index is the user's to decide.

2. **Run the gate:**

   ```bash
   make check
   ```

   `fmt` runs first and rewrites files, so re-read one before editing it again.

3. **Check what changed on screen** — for a change to a color or a group,
   dump the affected groups with `nvim_get_hl(0, { name = ..., link = false })`
   before and after, and say which ones moved. Neovim's defaults fill any
   group the theme leaves out, so a missing group still renders.

4. **Comment pass** — the `## Comment pass` in
   [`.claude/rules/comments.md`](../../rules/comments.md), over the comments
   this change added or touched.

5. **Read the diff against the mandatory rules in AGENTS.md** — the language,
   commit, color, group and comment rules, and the "Working here" list. Two
   need a search rather than a read: a hex value outside `palette.lua`, and an
   integration or option added without README following it.

6. **Before opening a pull request**, write its body with the `pr` skill and
   check it against
   [.github/pull_request_template.md](../../../.github/pull_request_template.md):
   every section filled, no HTML comment left, no attribution line.

7. **Fix and re-run** — fix what a step found, then run that step again to
   confirm it. If a failure is not yours to fix, say so rather than working
   around it.

8. **Report** — always say what happened:

   - Clean: a brief confirmation.
   - Found and fixed, one line each:

     ```
     Validation found and fixed 2 issues:
     - stylua: reformatted groups/plugins/blink.lua
     - Color rule: moved #323232 from fzf.lua into the palette
     ```

   - Still broken: what is wrong and why you could not fix it.
