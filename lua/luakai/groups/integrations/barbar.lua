local M = {}

function M.get()
  return {
    BufferCurrent = { bg = C.bg0, fg = C.fg },
    BufferCurrentIndex = { link = "BufferCurrent" },
    BufferCurrentMod = { bg = C.bg0, fg = C.blue },
    BufferCurrentSign = { bg = C.bg0, fg = C.red },
    BufferCurrentTarget = { bg = C.bg0, fg = C.red, style = { "bold" } },
    BufferVisible = { bg = C.bg_dim, fg = C.fg },
    BufferVisibleIndex = { bg = C.bg_dim, fg = C.fg },
    BufferVisibleMod = { bg = C.bg_dim, fg = C.blue },
    BufferVisibleSign = { bg = C.bg_dim, fg = C.red },
    BufferVisibleTarget = { bg = C.bg_dim, fg = C.red, style = { "bold" } },
    BufferInactive = { bg = C.bg_dim, fg = C.gray },
    BufferInactiveIndex = { bg = C.bg_dim, fg = C.gray },
    BufferInactiveMod = { bg = C.bg_dim, fg = C.gray },
    BufferInactiveSign = { bg = C.bg_dim, fg = C.gray_dim },
    BufferInactiveTarget = { bg = C.bg_dim, fg = C.yellow, style = { "bold" } },
    BufferTabpages = { bg = C.bg_dim, fg = C.gray, style = { "bold" } },
    BufferTabpage = { bg = C.bg_dim, fg = C.bg_dim },
  }
end

return M
