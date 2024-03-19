local M = {}

function M.get()
  return {
    PounceMatch = { bg = U.lighten(C.green, 0.7), fg = C.bg0, style = { "bold" } },
    PounceGap = { bg = U.darken(C.green, 0.7), fg = C.bg0, style = { "bold" } },
    PounceAccept = { bg = C.purple, fg = C.bg0, style = { "bold" } },
    PounceAcceptBest = { bg = C.blue, fg = C.bg0, style = { "bold" } },
  }
end

return M
