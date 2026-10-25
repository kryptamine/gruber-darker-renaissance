local M = {}

---@alias GruberDarkerRenaissanceHighlight vim.api.keyset.highlight|string String value is a link to another group
---@alias GruberDarkerRenaissanceHighlights table<string, GruberDarkerRenaissanceHighlight>

---@class GruberDarkerRenaissanceConfig
---@field bold boolean
---@field italic { strings: boolean, comments: boolean, operators: boolean, folds: boolean }
---@field invert { signs: boolean, tabline: boolean, visual: boolean }
---@field undercurl boolean
---@field underline boolean
---@field transparent boolean Don't set background colors
---@field terminal_colors boolean Set `g:terminal_color_*` for `:terminal`
---@field sidebars string[] Filetypes rendered with the darker sidebar background
---@field plugins table<string, boolean> Plugin integrations, see `gruber-darker-renaissance.groups`
---@field on_colors fun(colors: GruberDarkerRenaissanceColors)
---@field on_highlights fun(highlights: GruberDarkerRenaissanceHighlights, colors: GruberDarkerRenaissanceColors)

---@type GruberDarkerRenaissanceConfig
M.defaults = {
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
	transparent = false,
	terminal_colors = true,
	sidebars = { "qf", "help" },
	plugins = {
		blink = true,
		cmp = true,
		dap_ui = true,
		dashboard = true,
		fff = true,
		flash = true,
		fzf = true,
		gitsigns = true,
		illuminate = true,
		indent_blankline = true,
		lazy = true,
		leap = true,
		mason = true,
		mini = true,
		mini_icons = true,
		multicursor = true,
		navic = true,
		neo_tree = true,
		neogit = true,
		noice = true,
		notify = true,
		nvim_tree = true,
		rainbow_delimiters = true,
		render_markdown = true,
		snacks = true,
	},
	on_colors = function() end,
	on_highlights = function() end,
}

---@type GruberDarkerRenaissanceConfig
M.options = vim.deepcopy(M.defaults)

---@param opts? GruberDarkerRenaissanceConfig|table
function M.setup(opts)
	opts = opts or {}
	M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts)
	-- Lists are replaced, not merged by index
	if opts.sidebars then
		M.options.sidebars = opts.sidebars
	end
end

return M
