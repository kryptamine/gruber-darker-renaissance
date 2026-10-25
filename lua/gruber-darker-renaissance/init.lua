local config = require("gruber-darker-renaissance.config")

local M = {}

---@param opts GruberDarkerRenaissanceConfig
local function create_autocmds(opts)
	local group = vim.api.nvim_create_augroup("GruberDarkerRenaissance", { clear = true })

	-- Clean up once another colorscheme is loaded
	vim.api.nvim_create_autocmd("ColorSchemePre", {
		group = group,
		once = true,
		callback = function()
			pcall(vim.api.nvim_del_augroup_by_id, group)
		end,
	})

	if #opts.sidebars > 0 then
		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = opts.sidebars,
			callback = function()
				vim.opt_local.winhighlight = "Normal:NormalSB,SignColumn:SignColumnSB"
			end,
		})
	end
end

---Apply the colorscheme
function M.load()
	local opts = config.options

	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "gruber-darker-renaissance"

	local colors = require("gruber-darker-renaissance.colors").setup(opts)
	local groups = require("gruber-darker-renaissance.groups").setup(colors, opts)

	for name, hl in pairs(groups) do
		vim.api.nvim_set_hl(0, name, type(hl) == "string" and { link = hl } or hl)
	end

	if opts.terminal_colors then
		require("gruber-darker-renaissance.terminal").setup(colors)
	end

	-- Use the theme's `Cursor` group in terminals that support it
	if not vim.o.guicursor:find("a:Cursor/lCursor", 1, true) then
		vim.opt.guicursor:append("a:Cursor/lCursor")
	end

	create_autocmds(opts)
end

---@param opts? GruberDarkerRenaissanceConfig|table
function M.setup(opts)
	config.setup(opts)
end

return M
