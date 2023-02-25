local C = require("luakai.palettes").get_palette()
local O = require("luakai").options

local dirname_color = O.integrations.barbecue.dim_dirname and C.gray or C.fg

local M = {
    normal = { fg = C.fg, bg = "none" },
    ellipsis = { fg = C.gray },
    separator = { fg = C.gray },
    modified = { fg = C.yellow },
    dirname = { fg = dirname_color },
    basename = { fg = C.fg, bold = true },
    context = { fg = C.fg },
    -- Same keys as navic
    context_file = { fg = C.fg },
    context_module = { fg = C.orange },
    context_namespace = { fg = C.blue },
    context_package = { fg = C.orange },
    context_class = { fg = C.blue},
    context_method = { fg = C.green },
    context_property = { fg = C.orange },
    context_field = { fg = C.orange },
    context_constructor = { fg = C.green },
    context_enum = { fg = C.purple },
    context_interface = { fg = C.blue },
    context_function = { fg = C.green },
    context_variable = { fg = C.fg },
    context_constant = { fg = C.purple },
    context_string = { fg = C.green },
    context_number = { fg = C.purple },
    context_boolean = { fg = C.purple },
    context_array = { fg = C.orange },
    context_object = { fg = C.blue },
    context_key = { fg = C.red },
    context_null = { fg = C.gray },
    context_enum_member = { fg = C.purple },
    context_struct = { fg = C.blue },
    context_event = { fg = C.red},
    context_operator = { fg = C.green },
    context_type_parameter = { fg = C.blue },
}

return M
