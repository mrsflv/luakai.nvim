local M = {}

function M.get()
  return {
    tkLink = { fg = C.green },
    tkBrackets = { fg = C.orange },
    tkTag = { fg = C.purple },
  }
end

return M
