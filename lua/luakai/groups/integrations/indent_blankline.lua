local M = {}

function M.get()
    local hi = {
        IndentBlanklineChar = { fg = C.bg3, style = { "nocombine"} },
        IndentBlanklineContextChar = { fg = C.fg, style = { "nocombine"} },
        IndentBlanklineContextStart = { sp = C.fg, style = { "underline" } },
    }

    if O.integrations.indent_blankline.colored_indent_levels then
        hi["IndentBlanklineIndent6"] = { blend = 0, fg = C.blue }
        hi["IndentBlanklineIndent5"] = { blend = 0, fg = C.orange }
        hi["IndentBlanklineIndent4"] = { blend = 0, fg = C.green }
        hi["IndentBlanklineIndent3"] = { blend = 0, fg = C.purple }
        hi["IndentBlanklineIndent2"] = { blend = 0, fg = C.yellow }
        hi["IndentBlanklineIndent1"] = { blend = 0, fg = C.red }
    end

    return hi
end

return M
