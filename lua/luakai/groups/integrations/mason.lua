local M = {}

function M.get()
  local bg = O.transparent_background and C.none or C.bg3
  local fg = O.transparent_background and C.bg3 or C.fg

  local secondary_bg = O.transparent_background and C.none or C.blue
  local secondary_fg = O.transparent_background and C.blue or C.bg1

  local muted_bg = O.transparent_background and C.none or C.gray
  local muted_fg = O.transparent_background and C.bg0 or C.bg1

  return {
    MasonHeader = { fg = C.bg0, bg = C.orange, style = { "bold" } },
    MasonHeaderSecondary = { fg = fg, bg = secondary_bg, style = { "bold" } },
    MasonHighlight = { fg = C.green },
    MasonHighlightBlock = {
      bg = O.transparent_background and C.none or C.green,
      fg = O.transparent_background and C.green or C.bg4,
    },
    MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },
    MasonHighlightSecondary = { fg = C.gray },
    MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
    MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },
    MasonMuted = { fg = C.gray },
    MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
    MasonMutedBlockBold = { bg = C.yellow, fg = C.bg0, bold = true },
    MasonError = { fg = C.red },
    MasonHeading = { fg = C.green, bold = true },
    MasonLink = { fg = C.blue, style = { "underline" } },
  }
end

return M
