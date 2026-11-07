local M = {}

---https://jqlang.org
M.path = "jq/gruber-darker-renaissance.sh"

---@param hex string
---@return string
local function sgr(hex)
	return ("38;2;%d;%d;%d"):format(tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16))
end

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	local s = c.syntax
	-- Order: null, false, true, numbers, strings, arrays, objects, object keys
	local colors = { s.comment, s.keyword, s.keyword, s.number, s.string, s.punctuation, s.punctuation, s.property }
	return ([[
# JSON as the colorscheme highlights it. Source it from sh, bash, zsh or fish.
export JQ_COLORS="%s"]]):format(table.concat(vim.tbl_map(sgr, colors), ":"))
end

return M
