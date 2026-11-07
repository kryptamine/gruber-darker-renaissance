local M = {}

---https://code.claude.com/docs/en/terminal-config
M.path = "claude-code/gruber-darker-renaissance.json"

-- JSON has no comments
M.header = false

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	-- An array keeps the keys in order, so the file diffs cleanly
	local overrides = {
		{ "claude", c.yellow },
		{ "claudeShimmer", c.fg1 },
		{ "clawd_body", c.yellow },
		{ "clawd_background", c.black },
		{ "text", c.fg },
		{ "inverseText", c.black },
		{ "inactive", c.gray },
		{ "inactiveShimmer", c.fg },
		{ "subtle", c.bg4 },
		{ "suggestion", c.niagara },
		{ "permission", c.niagara },
		{ "permissionShimmer", c.niagara_light },
		{ "remember", c.wisteria },
		{ "success", c.diag.ok },
		{ "error", c.diag.error },
		{ "warning", c.brown },
		{ "warningShimmer", c.yellow },
		{ "merged", c.wisteria },
		{ "promptBorder", c.bg4 },
		{ "promptBorderShimmer", c.gray },
		{ "planMode", c.quartz },
		{ "autoAccept", c.wisteria },
		{ "bashBorder", c.brown },
		{ "ide", c.niagara },
		{ "fastMode", c.brown },
		{ "fastModeShimmer", c.yellow },
		{ "diffAdded", c.diff.add },
		{ "diffRemoved", c.diff.delete },
		{ "diffAddedWord", c.green_muted },
		{ "diffRemovedWord", c.red_muted },
		{ "userMessageBackground", c.bg1 },
		{ "userMessageBackgroundHover", c.bg1_5 },
		{ "bashMessageBackgroundColor", c.bg_classic },
		{ "memoryBackgroundColor", c.bg_classic },
		{ "selectionBg", c.bg_visual },
		{ "composerSidebarBackground", c.bg_alt },
		{ "rate_limit_fill", c.niagara },
		{ "rate_limit_empty", c.border },
		{ "red_FOR_SUBAGENTS_ONLY", c.red },
		{ "blue_FOR_SUBAGENTS_ONLY", c.niagara },
		{ "green_FOR_SUBAGENTS_ONLY", c.green },
		{ "yellow_FOR_SUBAGENTS_ONLY", c.yellow },
		{ "purple_FOR_SUBAGENTS_ONLY", c.wisteria },
		{ "orange_FOR_SUBAGENTS_ONLY", c.brown },
		{ "cyan_FOR_SUBAGENTS_ONLY", c.quartz },
	}
	local lines = {}
	for i, pair in ipairs(overrides) do
		lines[i] = ('    "%s": "%s"'):format(pair[1], pair[2])
	end
	return ([[
{
  "name": "Gruber Darker Renaissance",
  "base": "dark",
  "overrides": {
%s
  }
}]]):format(table.concat(lines, ",\n"))
end

return M
