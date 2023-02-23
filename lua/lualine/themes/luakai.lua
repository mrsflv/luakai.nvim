local C = require("luakai.palettes").get_palette()
local O = require("luakai").options
local luakai = {}

local transparent_bg = O.transparent_background and "NONE" or C.bg

local luakai = {
  normal = {
    a = {bg = C.bg_blue[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg4[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  insert = {
    a = {bg = C.bg_green[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg4[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  visual = {
    a = {bg = C.bg_red[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg4[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  replace = {
    a = {bg = C.orange[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg4[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  command = {
    a = {bg = C.yellow[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg4[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  terminal = {
    a = {bg = C.purple[1], fg = C.bg0[1], gui = 'bold'},
    b = {bg = C.bg3[1], fg = C.fg[1]},
    c = {bg = C.bg1[1], fg = C.fg[1]}
  },
  inactive = {
    a = {bg = C.bg1[1], fg = C.grey[1]},
    b = {bg = C.bg1[1], fg = C.grey[1]},
    c = {bg = C.bg1[1], fg = C.grey[1]}
  }
}

return luakai
