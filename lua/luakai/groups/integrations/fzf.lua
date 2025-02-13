local M = {}

function M.get()
  return {
    -- FzfLuaNormal = { link = "NormalFloat" }, -- Respect fzf-lua's default float bg
    FzfLuaBorder = { link = "FloatBorder" },
    FzfLuaTitle = { link = "FloatTitle" },
    FzfLuaHeaderBind = { fg = C.yellow },
    FzfLuaHeaderText = { fg = C.peach },
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
