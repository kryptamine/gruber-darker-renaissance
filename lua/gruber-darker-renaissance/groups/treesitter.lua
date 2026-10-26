local M = {}

---Tree-sitter captures, see `:h treesitter-highlight-groups`
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local s = c.syntax

	return {
		["@none"] = {},

		-- Comments
		["@comment"] = "Comment",
		["@comment.documentation"] = { fg = s.doc_comment, italic = opts.italic.comments },
		["@comment.luadoc"] = "@comment.documentation",
		["@comment.todo"] = "Todo",
		["@comment.note"] = "Comment",
		["@comment.warning"] = "WarningMsg",
		["@comment.error"] = "ErrorMsg",

		-- Punctuation and operators
		["@operator"] = "Operator",
		["@punctuation.delimiter"] = "Delimiter",
		["@punctuation.bracket"] = { fg = s.bracket },
		["@punctuation.special"] = "Special",

		-- Literals
		["@string"] = "String",
		["@string.documentation"] = "String",
		["@string.regexp"] = "Constant",
		["@string.escape"] = "Constant",
		["@string.special"] = "Constant",
		["@character"] = "Character",
		["@character.special"] = "Constant",
		["@boolean"] = "Boolean",
		["@number"] = "Number",
		["@number.float"] = "Float",

		-- Functions
		["@function"] = "Function",
		["@function.builtin"] = "Function",
		["@function.macro"] = "Macro",
		["@function.method"] = "Function",
		["@constructor"] = "Function",

		-- Keywords
		["@keyword"] = "Keyword",
		["@keyword.conditional"] = "Conditional",
		["@keyword.conditional.ternary"] = "Operator",
		["@keyword.repeat"] = "Repeat",
		["@keyword.debug"] = "Debug",
		["@keyword.modifier"] = "StorageClass",
		["@keyword.directive"] = "PreProc",
		["@keyword.directive.define"] = "Define",
		-- #include is a directive in C, unlike import in other languages
		["@keyword.import.c"] = "PreProc",
		["@keyword.import.cpp"] = "PreProc",
		["@label"] = "Label",
		["@attribute"] = "PreProc",

		-- Types
		["@type"] = "Type",
		["@type.builtin"] = "Type",

		-- Identifiers
		["@variable"] = "Identifier",
		["@variable.builtin"] = { fg = s.builtin },
		["@variable.parameter"] = "Identifier",
		["@variable.member"] = { fg = s.field },
		["@property"] = { fg = s.property },
		["@constant"] = "Constant",
		["@constant.builtin"] = { fg = s.builtin },
		["@constant.macro"] = "Define",
		["@module"] = "Type",
		["@module.builtin"] = { fg = s.builtin },

		-- Markup
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = "Italic",
		["@markup.underline"] = "Underlined",
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.heading"] = "Title",
		["@markup.raw"] = "Constant",
		["@markup.link"] = { fg = c.yellow, bold = opts.bold },
		["@markup.link.url"] = { fg = c.niagara, underline = opts.underline },

		-- Diff
		["@diff.plus"] = "Added",
		["@diff.minus"] = "Removed",
		["@diff.delta"] = "Changed",

		-- Tags (HTML, JSX, XML)
		["@tag"] = "Tag",
		["@tag.attribute"] = "@variable.member",
		["@tag.delimiter"] = "Delimiter",
	}
end

return M
