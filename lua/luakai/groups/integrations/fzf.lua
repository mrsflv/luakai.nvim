local M = {}

function M.get()
  return {
    FzfLuaNormal = { link = O.dim_inactive.enabled and "Normal" or "NormalFloat" }, -- Respect fzf-lua's default float bg
    FzfLuaBorder = { link = O.dim_inactive.enabled and "Normal" or "FloatBorder" },
    FzfLuaTitle = { link = O.dim_inactive.enabled and "Title" or "FloatTitle" },
    FzfLuaCursor = { fg = C.fg, bg = O.dim_inactive.enabled and C.bg1 or C.bg4 },
    FzfLuaCursorLine = { bg = O.dim_inactive.enabled and C.bg1 or C.bg4 },
    FzfLuaHeaderBind = { fg = C.yellow },
    FzfLuaHeaderText = { fg = C.red },
    FzfLuaDirPart = { link = "Directory" },
    FzfLuaFzfMatch = { fg = C.blue },
    FzfLuaFzfPrompt = { fg = C.orange },
    FzfLuaPathColNr = { fg = C.gray },
    FzfLuaPathLineNr = { fg = C.yellow },
    FzfLuaBufName = { fg = C.fg },
    FzfLuaBufNr = { fg = C.blue },
    FzfLuaBufFlagCur = { fg = C.red },
    FzfLuaBufFlagAlt = { fg = C.yellow },
    FzfLuaTabTitle = { fg = C.green },
    FzfLuaTabMarker = { fg = C.yellow },

    FzfLuaLiveSym = { fg = C.violet },
  }
end

return M
