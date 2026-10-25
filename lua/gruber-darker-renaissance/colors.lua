local M = {}

---@class GruberDarkerRenaissanceSyntaxColors
---@field comment string
---@field doc_comment string
---@field string string
---@field number string
---@field constant string
---@field type string
---@field keyword string
---@field builtin string
---@field func string
---@field field string
---@field property string
---@field variable string
---@field operator string
---@field punctuation string
---@field bracket string
---@field special string
---@field preproc string

---@class GruberDarkerRenaissanceColors: GruberDarkerRenaissancePalette
---@field bg_sidebar string
---@field bg_float string
---@field bg_popup string
---@field bg_highlight string
---@field bg_visual string
---@field bg_statusline string
---@field bg_match string
---@field fg_gutter string
---@field fg_muted string
---@field border string
---@field separator string
---@field cursor string
---@field syntax GruberDarkerRenaissanceSyntaxColors
---@field diag { error: string, warn: string, info: string, hint: string }
---@field git { add: string, change: string, delete: string }
---@field diff { add: string, change: string, delete: string, text: string } Line backgrounds

---Build semantic colors on top of the raw palette
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceColors
function M.setup(opts)
	---@type GruberDarkerRenaissanceColors
	local c = vim.deepcopy(require("gruber-darker-renaissance.palette"))

	-- UI
	c.bg = opts.transparent and c.none or c.bg
	c.bg_sidebar = opts.transparent and c.none or c.bg_alt
	c.bg_float = c.bg
	c.bg_popup = c.bg
	c.bg_highlight = c.bg1
	c.bg_visual = c.bg2
	c.bg_statusline = c.bg1
	c.bg_match = c.match
	c.fg_gutter = c.bg4
	c.fg_muted = c.niagara_dark
	c.border = c.gray_dark
	c.separator = c.gray_dark
	c.cursor = c.yellow

	c.syntax = {
		comment = c.ash,
		doc_comment = c.ash,
		string = c.green,
		number = c.quartz,
		constant = c.quartz,
		type = c.quartz,
		keyword = c.yellow,
		builtin = c.yellow,
		func = c.niagara,
		field = c.fg1,
		property = c.fg1,
		variable = c.fg1,
		operator = c.fg,
		punctuation = c.gray,
		bracket = c.gray,
		special = c.yellow,
		preproc = c.quartz,
	}

	c.diag = {
		error = c.red,
		warn = c.yellow,
		info = c.niagara,
		hint = c.quartz,
	}

	c.git = {
		add = c.green,
		change = c.yellow,
		delete = c.red,
	}

	c.diff = {
		add = c.green_darker,
		change = c.yellow_darker,
		delete = c.red_darker,
		text = c.yellow_dark,
	}

	opts.on_colors(c)

	return c
end

return M
