local M = {}

---https://github.com/sharkdp/vivid
M.path = "vivid/gruber-darker-renaissance.yml"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	local names = {}
	for _, name in ipairs({ "fg", "gray", "ash", "quartz", "niagara", "wisteria", "green", "yellow", "brown", "red" }) do
		names[name] = c[name]:sub(2)
	end
	-- gsub returns a count too, which would leak into the caller's write
	local theme = ([[
# LS_COLORS for fd, tree and the rest, mirroring the eza extra: directories
# and executables stand out, the rest reads as plain text.
colors:
  fg: "$fg"
  gray: "$gray"
  ash: "$ash"
  quartz: "$quartz"
  niagara: "$niagara"
  wisteria: "$wisteria"
  green: "$green"
  yellow: "$yellow"
  brown: "$brown"
  red: "$red"

core:
  normal_text: {}
  regular_file: {}
  reset_to_normal: {}
  directory:
    foreground: niagara
  symlink:
    foreground: quartz
  multi_hard_link: {}
  fifo:
    foreground: brown
  socket:
    foreground: brown
  door:
    foreground: brown
  block_device:
    foreground: brown
  character_device:
    foreground: brown
  broken_symlink:
    foreground: red
  missing_symlink_target:
    foreground: red
  setuid: {}
  setgid: {}
  file_with_capability: {}
  sticky_other_writable: {}
  other_writable: {}
  sticky: {}
  executable_file:
    foreground: green

text:
  foreground: fg

markup:
  foreground: fg

programming:
  foreground: fg
  tooling:
    foreground: yellow

media:
  foreground: wisteria

office:
  foreground: fg

archives:
  foreground: brown

executable:
  foreground: green

unimportant:
  foreground: ash]]):gsub("%$([%w_]+)", names)
	return theme
end

return M
