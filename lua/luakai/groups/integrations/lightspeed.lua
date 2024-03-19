local M = {}

function M.get()
  return {
    LightspeedLabel = { fg = C.red, style = { "bold", "underline" } },
    LightspeedLabelDistant = {
      fg = C.blue,
      style = { "bold", "underline" },
    },
    LightspeedShortcut = {
      fg = C.bg0,
      bg = U.increase_saturation(C.red, 0.7),
      style = { "bold" },
    },
    LightspeedMaskedChar = {
      fg = C.purple,
    },
    LightspeedUnlabeledMatch = { fg = C.fg, style = { "bold" } },
    LightspeedGreyWash = { link = "Comment" },
    LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedOneCharMatch = { link = "LightspeedShortcut" },
    LightspeedPendingOpArea = { link = "IncSearch" },
    LightspeedCursor = { link = "Cursor" },
  }
end

return M
