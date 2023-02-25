local M = {}

local virtual_text = O.integrations.native_lsp.virtual_text

function M.get()
    return {
    -- Personally the default integration is already pretty good
        NoiceCmdline = { fg = C.fg },
        NoiceCmdlineIcon = { fg = C.fg, style = virtual_text.information },
        NoiceCmdlineIconSearch = { fg = C.yellow },
        NoiceCmdlinePopupBorder = { fg = C.gray },
        NoiceCmdlinePopupBorderSearch = { fg = C.gray },
        NoiceConfirmBorder = { fg = C.blue },
        NoiceMini = { fg = C.fg },
    }
end

return M
