local M = {}

---Core groups, applied in order
M.base = {
	"editor",
	"syntax",
	"treesitter",
	"semantic_tokens",
	"diagnostics",
}

---Plugin integrations, toggled with `opts.plugins`
M.plugins = {
	"blink",
	"cmp",
	"dap_ui",
	"dashboard",
	"fff",
	"flash",
	"fzf",
	"gitsigns",
	"illuminate",
	"indent_blankline",
	"lazy",
	"leap",
	"mason",
	"mini_icons",
	"multicursor",
}

---Collect all highlight groups
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.setup(c, opts)
	---@type GruberDarkerRenaissanceHighlights
	local groups = {}

	local function add(module)
		for name, hl in pairs(require("gruber-darker-renaissance.groups." .. module).get(c, opts)) do
			groups[name] = hl
		end
	end

	for _, module in ipairs(M.base) do
		add(module)
	end

	for _, plugin in ipairs(M.plugins) do
		if opts.plugins[plugin] then
			add("plugins." .. plugin)
		end
	end

	opts.on_highlights(groups, c)

	return groups
end

return M
