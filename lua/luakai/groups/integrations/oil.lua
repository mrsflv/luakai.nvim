local M = {}

function M.get()
  return {
    OilHidden = { fg = C.gray },
    OilDir = { link = "Directory", style = { "bold" } },
    OilDirHidden = { fg = C.gray },
    OilDirIcon = { link = "Directory" },
    OilSocket = { fg = C.orange },
    OilSocketHidden = { fg = C.gray },
    OilLink = { fg = C.blue, style = { "italic" } },
    OilOrphanLink = { fg = C.red, style = { "italic" } },
    OilLinkHidden = { fg = C.gray, style = { "italic" } },
    OilOrphanLinkHidden = { fg = C.gray, style = { "italic" } },
    OilLinkTarget = { fg = C.yellow, style = { "italic" } },
    OilOrphanLinkTarget = { fg = C.red, style = { "italic" } },
    OilLinkTargetHidden = { fg = C.gray, style = { "italic" } },
    OilOrphanLinkTargetHidden = { fg = C.gray, style = { "italic" } },
    OilFile = { fg = C.fg },
    OilFileHidden = { fg = C.gray },
    OilCreate = { fg = C.bg2 },
    OilDelete = { fg = C.gray_dim },
    --[[ OilMove = {},
    OilCopy = {},
    OilChange = {},
    OilRestore = { fg = C.purple },
    OilPurge = {},
    OilTrash = {},
    OilTrashSourcePath = {}, ]]
  }
end

return M
