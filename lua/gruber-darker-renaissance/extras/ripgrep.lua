local M = {}

---https://github.com/BurntSushi/ripgrep
M.path = "ripgrep/gruber-darker-renaissance.conf"

---@param hex string
---@return string
local function rgb(hex)
	return ("0x%s,0x%s,0x%s"):format(hex:sub(2, 3), hex:sub(4, 5), hex:sub(6, 7))
end

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# The stock path and match styles are bold
--colors=path:fg:%s
--colors=path:style:nobold
--colors=line:fg:%s
--colors=column:fg:%s
--colors=match:fg:%s
--colors=match:style:nobold]]):format(rgb(c.niagara), rgb(c.gray), rgb(c.gray), rgb(c.yellow))
end

return M
