local C = require("luakai.palettes").get_palette()
local O = require("luakai").options
local luakai = {}

local transparent_bg = O.transparent_background and "NONE" or C.mantle

luakai.normal = {
    a = { bg = C.blue, fg = C.mantle, gui = "bold" },
    b = { bg = C.surface1, fg = C.blue },
    c = { bg = transparent_bg, fg = C.text },
}

luakai.insert = {
    a = { bg = C.green, fg = C.base, gui = "bold" },
    b = { bg = C.surface1, fg = C.teal },
}

luakai.terminal = {
    a = { bg = C.green, fg = C.base, gui = "bold" },
    b = { bg = C.surface1, fg = C.teal },
}

luakai.command = {
    a = { bg = C.peach, fg = C.base, gui = "bold" },
    b = { bg = C.surface1, fg = C.peach },
}

luakai.visual = {
    a = { bg = C.mauve, fg = C.base, gui = "bold" },
    b = { bg = C.surface1, fg = C.mauve },
}

luakai.replace = {
    a = { bg = C.red, fg = C.base, gui = "bold" },
    b = { bg = C.surface1, fg = C.red },
}

luakai.inactive = {
    a = { bg = transparent_bg, fg = C.blue },
    b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
    c = { bg = transparent_bg, fg = C.overlay0 },
}

return luakai
