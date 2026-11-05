local M = {}

---https://eza.rocks
M.path = "eza/gruber-darker-renaissance.yml"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	local names = {
		fg = c.fg,
		gray = c.gray,
		dim = c.fg_gutter,
		ash = c.ash,
		yellow = c.yellow,
		green = c.green,
		red = c.red,
		red_light = c.red_light,
		brown = c.brown,
		quartz = c.quartz,
		niagara = c.niagara,
		wisteria = c.wisteria,
		add = c.git.add,
		change = c.git.change,
		delete = c.git.delete,
	}
	-- gsub returns a count too, which would leak into the caller's write
	local theme = ([[
# EZA_COLORS overrides this file, so unset it.
# eza merges a theme over its own defaults, many of them bold or underlined,
# so every entry sets is_bold (and is_underline where it matters).

colourful: true

# Directories and executables stand out, the rest reads as plain text
filekinds:
  normal: {foreground: "$fg", is_bold: false}
  directory: {foreground: "$niagara", is_bold: false}
  symlink: {foreground: "$quartz", is_bold: false}
  pipe: {foreground: "$brown", is_bold: false}
  block_device: {foreground: "$brown", is_bold: false}
  char_device: {foreground: "$brown", is_bold: false}
  socket: {foreground: "$brown", is_bold: false}
  special: {foreground: "$brown", is_bold: false}
  executable: {foreground: "$green", is_bold: false}
  mount_point: {foreground: "$niagara", is_bold: false, is_underline: false}

file_type:
  image: {foreground: "$wisteria", is_bold: false}
  video: {foreground: "$wisteria", is_bold: false}
  music: {foreground: "$wisteria", is_bold: false}
  lossless: {foreground: "$wisteria", is_bold: false}
  crypto: {foreground: "$red", is_bold: false}
  document: {foreground: "$fg", is_bold: false}
  compressed: {foreground: "$brown", is_bold: false}
  temp: {foreground: "$ash", is_bold: false}
  compiled: {foreground: "$gray", is_bold: false}
  build: {foreground: "$yellow", is_bold: false, is_underline: false}
  source: {foreground: "$fg", is_bold: false}

# The user triplet in color, group and other in gray
perms:
  user_read: {foreground: "$yellow", is_bold: false}
  user_write: {foreground: "$red", is_bold: false}
  user_execute_file: {foreground: "$green", is_bold: false, is_underline: false}
  user_execute_other: {foreground: "$green", is_bold: false}
  group_read: {foreground: "$gray", is_bold: false}
  group_write: {foreground: "$gray", is_bold: false}
  group_execute: {foreground: "$gray", is_bold: false}
  other_read: {foreground: "$gray", is_bold: false}
  other_write: {foreground: "$gray", is_bold: false}
  other_execute: {foreground: "$gray", is_bold: false}
  special_user_file: {foreground: "$wisteria", is_bold: false}
  special_other: {foreground: "$wisteria", is_bold: false}
  attribute: {foreground: "$dim", is_bold: false}

# Metadata in gray, units a step darker, so names carry the line
size:
  major: {foreground: "$gray", is_bold: false}
  minor: {foreground: "$dim", is_bold: false}
  number_byte: {foreground: "$gray", is_bold: false}
  number_kilo: {foreground: "$gray", is_bold: false}
  number_mega: {foreground: "$gray", is_bold: false}
  number_giga: {foreground: "$gray", is_bold: false}
  number_huge: {foreground: "$gray", is_bold: false}
  unit_byte: {foreground: "$dim", is_bold: false}
  unit_kilo: {foreground: "$dim", is_bold: false}
  unit_mega: {foreground: "$dim", is_bold: false}
  unit_giga: {foreground: "$dim", is_bold: false}
  unit_huge: {foreground: "$dim", is_bold: false}

users:
  user_you: {foreground: "$gray", is_bold: false}
  user_root: {foreground: "$red", is_bold: false}
  user_other: {foreground: "$gray", is_bold: false}
  group_yours: {foreground: "$gray", is_bold: false}
  group_other: {foreground: "$gray", is_bold: false}
  group_root: {foreground: "$red", is_bold: false}

links:
  normal: {foreground: "$gray", is_bold: false}
  multi_link_file: {foreground: "$yellow", is_bold: false}

date: {foreground: "$gray", is_bold: false}
inode: {foreground: "$gray", is_bold: false}
blocks: {foreground: "$gray", is_bold: false}
octal: {foreground: "$gray", is_bold: false}
flags: {foreground: "$gray", is_bold: false}
header: {foreground: "$gray", is_bold: false, is_underline: false}
punctuation: {foreground: "$dim", is_bold: false}

git:
  new: {foreground: "$add", is_bold: false}
  modified: {foreground: "$change", is_bold: false}
  deleted: {foreground: "$delete", is_bold: false}
  renamed: {foreground: "$niagara", is_bold: false}
  typechange: {foreground: "$wisteria", is_bold: false}
  ignored: {foreground: "$ash", is_bold: false}
  conflicted: {foreground: "$red_light", is_bold: false}

git_repo:
  branch_main: {foreground: "$green", is_bold: false}
  branch_other: {foreground: "$wisteria", is_bold: false}
  git_clean: {foreground: "$green", is_bold: false}
  git_dirty: {foreground: "$yellow", is_bold: false}

symlink_path: {foreground: "$quartz", is_bold: false}
control_char: {foreground: "$red", is_bold: false}
broken_symlink: {foreground: "$red", is_bold: false}
broken_path_overlay: {foreground: "$red", is_bold: false, is_underline: true}]]):gsub("%$([%w_]+)", names)
	return theme
end

return M
