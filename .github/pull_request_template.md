## Summary

<!--
The smallest view that makes the point: a palette diff, a table of groups
before and after, a file tree, each beside one or two lines of why.
-->

Closes #

## Evidence

<!--
A before and an after: screenshots of the same buffer, or the groups'
resolved values from nvim_get_hl. `make check` is the gate; show what you
looked at beyond it.
-->

- **Before:**
  **After:**

## Merge Danger

<!--
A two-way door is cheap to walk back; a one-way door is not — an option
renamed or removed, a group users link to in their own config, a colorscheme
or module name.
-->

**Door:** <!-- one-way or two-way -->

**Blast Radius:** <!-- one word: what could break, and for whom -->

## Before merging

- [ ] `make check` is green locally.
- [ ] One logical change per commit, Conventional Commits, no co-author
      trailer. **PRs are rebased, never squashed or merged**, so the commit
      messages are what lands in the history.
- [ ] Hex values live in `palette.lua` only.
- [ ] README's options and structure match the code.
- [ ] This pull request is one thing.
