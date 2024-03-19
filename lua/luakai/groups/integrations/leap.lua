local M = {}

function M.get()
  return {
    LeapMatch = {
      fg = O.transparent_background and C.pink or U.brighten(C.green, 0.3),
      style = { "underline", "nocombine", O.transparent_background and "bold" or nil },
    },
    LeapLabelPrimary = {
      fg = O.transparent_background and C.green or C.bg0,
      bg = O.transparent_background and C.none or U.brighten(C.green, 0.3),
      style = { "nocombine", O.transparent_background and "bold" or nil },
    },
    LeapLabelSecondary = {
      fg = O.transparent_background and C.blue or C.bg0,
      bg = O.transparent_background and C.none or U.brighten(C.green, 0.3),
      style = { "nocombine", O.transparent_background and "bold" or nil },
    },
    LeapBackdrop = { fg = O.transparent_background and C.bg2 or C.none },
  }
end

return M
