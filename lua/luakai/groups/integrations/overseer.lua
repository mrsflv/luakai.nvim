local M = {}

function M.get()
  return {
    OverseerPENDING = { fg = C.bg2 },
    OverseerRUNNING = { fg = C.yellow },
    OverseerSUCCESS = { fg = C.green },
    OverseerCANCELED = { fg = C.gray },
    OverseerFAILURE = { fg = C.red },
    OverseerTask = { fg = C.blue },
    OverseerTaskBorder = { fg = C.fg },
    OverseerOutput = { fg = C.fg },
    OverseerComponent = { fg = C.orange },
    OverseerField = { fg = C.orange },
  }
end

return M
