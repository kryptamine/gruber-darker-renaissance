local M = {}

---https://github.com/NeogitOrg/neogit
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local title = { fg = c.black, bg = c.yellow, bold = opts.bold }

	local groups = {
		NeogitGraphAuthor = { fg = c.brown },

		NeogitHunkHeader = { fg = c.fg, bg = c.bg1, bold = opts.bold },
		NeogitHunkHeaderHighlight = { fg = c.fg1, bg = c.bg1_5, bold = opts.bold },
		NeogitHunkHeaderCursor = { fg = c.fg1, bg = c.bg1_5, bold = opts.bold },
		NeogitHunkMergeHeader = { fg = c.quartz, bg = c.bg1, bold = opts.bold },
		NeogitHunkMergeHeaderHighlight = { fg = c.black, bg = c.quartz, bold = opts.bold },
		NeogitHunkMergeHeaderCursor = { fg = c.black, bg = c.quartz, bold = opts.bold },
		NeogitDiffHeader = { fg = c.niagara, bg = c.bg1, bold = opts.bold },
		NeogitDiffHeaderHighlight = { fg = c.yellow, bg = c.bg1, bold = opts.bold },

		-- Hunks away from the cursor are dimmed, the one under it is lit
		NeogitDiffContext = { bg = c.bg },
		NeogitDiffContextHighlight = { bg = c.bg_dim },
		NeogitDiffContextCursor = { bg = c.bg_highlight },
		NeogitDiffAdd = { fg = c.git_staged.add, bg = c.diff.add },
		NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },
		NeogitDiffAddCursor = { fg = c.git.add, bg = c.bg_highlight },
		NeogitDiffDelete = { fg = c.git_staged.delete, bg = c.diff.delete },
		NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
		NeogitDiffDeleteCursor = { fg = c.git.delete, bg = c.bg_highlight },
		NeogitDiffAddInline = { fg = c.fg1, bg = c.green_muted, bold = opts.bold },
		NeogitDiffDeleteInline = { fg = c.fg1, bg = c.red_muted, bold = opts.bold },
		NeogitDiffAdditions = { fg = c.git.add },
		NeogitDiffDeletions = { fg = c.git.delete },

		NeogitPopupSwitchKey = { fg = c.yellow },
		NeogitPopupOptionKey = { fg = c.yellow },
		NeogitPopupConfigKey = { fg = c.yellow },
		NeogitPopupActionKey = { fg = c.yellow },

		NeogitSectionHeader = { fg = c.yellow, bold = opts.bold },
		NeogitFilePath = { fg = c.niagara },
		NeogitBranch = { fg = c.niagara, bold = opts.bold },
		NeogitBranchHead = { fg = c.niagara, bold = opts.bold, underline = opts.underline },
		NeogitRemote = { fg = c.green, bold = opts.bold },
		NeogitUnmergedInto = { fg = c.quartz, bold = opts.bold },
		NeogitUnpushedTo = { fg = c.quartz, bold = opts.bold },
		NeogitUnpulledFrom = { fg = c.quartz, bold = opts.bold },
		NeogitTagName = { fg = c.yellow },
		NeogitTagDistance = { fg = c.quartz },

		NeogitChangeModified = { fg = c.git.change, bold = opts.bold },
		NeogitChangeAdded = { fg = c.git.add, bold = opts.bold },
		NeogitChangeNewFile = { fg = c.git.add, bold = opts.bold },
		NeogitChangeDeleted = { fg = c.git.delete, bold = opts.bold },
		NeogitChangeRenamed = { fg = c.niagara, bold = opts.bold },
		NeogitChangeUpdated = { fg = c.quartz, bold = opts.bold },
		NeogitChangeCopied = { fg = c.quartz, bold = opts.bold },
		NeogitChangeUnmerged = { fg = c.brown, bold = opts.bold },

		NeogitCommitViewHeader = title,
		NeogitFloatHeaderHighlight = title,
		NeogitActiveItem = title,
	}

	-- Neogit derives these from ErrorMsg, Operator and Include,
	-- which here are not red, cyan and purple
	local graph = {
		Red = c.red,
		White = c.fg1,
		Yellow = c.yellow,
		Green = c.green,
		Cyan = c.quartz,
		Blue = c.niagara,
		Purple = c.wisteria,
		Gray = c.fg_muted,
		Orange = c.brown,
	}
	for name, color in pairs(graph) do
		groups["NeogitGraph" .. name] = { fg = color }
		groups["NeogitGraphBold" .. name] = { fg = color, bold = opts.bold }
	end

	return groups
end

return M
