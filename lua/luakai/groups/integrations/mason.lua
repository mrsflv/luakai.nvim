local M = {}

function M.get()
    local bg = O.transparent_background and C.none or C.bg1
    local fg = O.transparent_background and C.fg or C.bg1

    local secondary_bg = O.transparent_background and C.none or C.blue
    local secondary_fg = O.transparent_background and C.blue or C.bg0

    local muted_bg = O.transparent_background and C.none or C.bg1
    local muted_fg = O.transparent_background and C.bg3 or C.bg0

    return {
        MasonHeader = { fg = fg, bg = bg, style = { "bold" } },
        MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, style = { "bold" } },
        MasonHighlight = { fg = C.green },
        MasonHighlightBlock = {
            bg = O.transparent_background and C.none or C.green,
            fg = O.transparent_background and C.green or C.bg2,
        },
        MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },
        MasonHighlightSecondary = { fg = C.bg4 },
        MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
        MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },
        MasonMuted = { fg = C.bg2 },
        MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
        MasonMutedBlockBold = { bg = C.yellow, fg = C.base, bold = true },
        MasonError = { fg = C.red },
        MasonHeading = { fg = C.green, bold = true },
    }
end

return M
