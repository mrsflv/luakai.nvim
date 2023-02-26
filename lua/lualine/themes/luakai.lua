local C = require("luakai.palettes").get_palette()
local O = require("luakai").options

local transparent_bg = O.transparent_background and "NONE" or C.bg1

local luakai = {
  normal = {
    a = {bg = C.bg_blue, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg4, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  insert = {
    a = {bg = C.bg_green, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg4, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  visual = {
    a = {bg = C.bg_red, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg4, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  replace = {
    a = {bg = C.orange, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg4, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  command = {
    a = {bg = C.yellow, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg4, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  terminal = {
    a = {bg = C.purple, fg = C.bg0, gui = 'bold'},
    b = {bg = C.bg3, fg = C.fg},
    c = {bg = transparent_bg, fg = C.fg}
  },
  inactive = {
    a = {bg = transparent_bg, fg = C.grey},
    b = {bg = transparent_bg, fg = C.grey},
    c = {bg = transparent_bg, fg = C.grey}
  }
}

return luakai
