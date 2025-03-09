local palette = require("cyyber.palette")
local theme = {
	a = { fg = palette.cyan },
	b = { fg = palette.light_cyan },
	c = { fg = palette.light_blue },
	x = { fg = palette.light_green },
	y = { fg = palette.blue },
	z = { fg = palette.light_magenta },
}

return {
  normal = theme,
  insert = theme,
  visual = theme,
  command = theme,
  replace = theme,
  inactive = theme,
}
