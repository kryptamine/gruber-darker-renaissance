local M = {}

---https://fishshell.com
M.path = "fish/gruber-darker-renaissance.theme"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	-- fish wants hex without the leading #
	local function h(color)
		return color:sub(2)
	end

	return ([[
# name: Gruber Darker Renaissance

fish_color_normal %s
fish_color_command %s
fish_color_keyword %s
fish_color_param %s
fish_color_option %s
fish_color_quote %s
fish_color_redirection %s
fish_color_end %s
fish_color_operator %s
fish_color_escape %s
fish_color_comment %s
fish_color_error %s
fish_color_autosuggestion %s
fish_color_valid_path --underline
fish_color_cancel -r
fish_color_cwd %s
fish_color_cwd_root %s
fish_color_user %s
fish_color_host %s
fish_color_host_remote %s
fish_color_status %s
fish_color_history_current --bold
fish_color_search_match --background=%s
fish_color_selection --background=%s
fish_pager_color_prefix %s --bold
fish_pager_color_completion %s
fish_pager_color_description %s
fish_pager_color_progress %s --background=%s
fish_pager_color_selected_background --background=%s]]):format(
		h(c.fg),
		h(c.yellow),
		h(c.syntax.keyword),
		h(c.niagara),
		h(c.quartz),
		h(c.syntax.string),
		h(c.syntax.punctuation),
		h(c.syntax.punctuation),
		h(c.quartz),
		h(c.quartz),
		h(c.syntax.comment),
		h(c.diag.error),
		h(c.fg_gutter),
		h(c.green),
		h(c.red),
		h(c.green),
		h(c.fg),
		h(c.yellow),
		h(c.red),
		h(c.bg_visual),
		h(c.bg_visual),
		h(c.yellow),
		h(c.fg),
		h(c.fg_muted),
		h(c.black),
		h(c.yellow),
		h(c.bg_visual)
	)
end

return M
