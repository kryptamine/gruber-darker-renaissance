local M = {}

---https://github.com/aristocratos/btop
M.path = "btop/gruber-darker-renaissance.theme"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
theme[main_bg]="%s"
theme[main_fg]="%s"
theme[title]="%s"
theme[hi_fg]="%s"
theme[selected_bg]="%s"
theme[selected_fg]="%s"
theme[inactive_fg]="%s"
theme[graph_text]="%s"
theme[meter_bg]="%s"
theme[proc_misc]="%s"

theme[cpu_box]="%s"
theme[mem_box]="%s"
theme[net_box]="%s"
theme[proc_box]="%s"
theme[div_line]="%s"

theme[temp_start]="%s"
theme[temp_mid]="%s"
theme[temp_end]="%s"

theme[cpu_start]="%s"
theme[cpu_mid]="%s"
theme[cpu_end]="%s"

theme[free_start]="%s"
theme[free_mid]=""
theme[free_end]="%s"

theme[cached_start]="%s"
theme[cached_mid]=""
theme[cached_end]="%s"

theme[available_start]="%s"
theme[available_mid]=""
theme[available_end]="%s"

theme[used_start]="%s"
theme[used_mid]=""
theme[used_end]="%s"

theme[download_start]="%s"
theme[download_mid]=""
theme[download_end]="%s"

theme[upload_start]="%s"
theme[upload_mid]=""
theme[upload_end]="%s"

theme[process_start]="%s"
theme[process_mid]="%s"
theme[process_end]="%s"]]):format(
		c.black,
		c.fg,
		c.fg,
		c.yellow,
		c.bg1,
		c.yellow,
		c.bg4,
		c.gray,
		c.bg1,
		c.niagara,
		c.bg4,
		c.bg4,
		c.bg4,
		c.bg4,
		c.bg2,
		c.green,
		c.yellow,
		c.red,
		c.green,
		c.yellow,
		c.red,
		c.green,
		c.green,
		c.niagara,
		c.niagara_light,
		c.quartz,
		c.fg,
		c.brown,
		c.red,
		c.niagara,
		c.niagara_light,
		c.wisteria,
		c.fg,
		c.green,
		c.yellow,
		c.red
	)
end

return M
