local M = {}

function M.get()
  return {
    WhichKey = { fg = C.red },
    WhichKeyGroup = { fg = C.orange },
    WhichKeySeperator = { fg = C.gray },
    WhichKeyDesc = { fg = C.blue },
    WhichKeyBorder = { fg = C.bg2 },
    WhichKeyValue = { fg = C.fg },
  }
end

return M
