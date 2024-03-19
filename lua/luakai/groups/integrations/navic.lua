local M = {}

function M.get()
  local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.bg4
  return {
    NavicIconsFile = { fg = C.fg, bg = background },
    NavicIconsModule = { fg = C.blue, bg = background },
    NavicIconsNamespace = { fg = C.blue, bg = background },
    NavicIconsPackage = { fg = C.orange, bg = background },
    NavicIconsClass = { fg = C.blue, bg = background },
    NavicIconsMethod = { fg = C.green, bg = background },
    NavicIconsProperty = { fg = C.orange, bg = background },
    NavicIconsField = { fg = C.orange, bg = background },
    NavicIconsConstructor = { fg = C.green, bg = background },
    NavicIconsEnum = { fg = C.purple, bg = background },
    NavicIconsInterface = { fg = C.blue, bg = background },
    NavicIconsFunction = { fg = C.green, bg = background },
    NavicIconsVariable = { fg = C.fg, bg = background },
    NavicIconsConstant = { fg = C.purple, bg = background },
    NavicIconsString = { fg = C.yellow, style = O.styles.strings, bg = background },
    NavicIconsNumber = { fg = C.purple, bg = background },
    NavicIconsBoolean = { fg = C.purple, bg = background },
    NavicIconsArray = { fg = C.orange, bg = background },
    NavicIconsObject = { fg = C.blue, bg = background },
    NavicIconsKey = { fg = C.red, style = O.styles.keywords, bg = background },
    NavicIconsNull = { fg = C.gray, bg = background },
    NavicIconsEnumMember = { fg = C.purple, bg = background },
    NavicIconsStruct = { fg = C.blue, bg = background },
    NavicIconsEvent = { fg = C.red, bg = background },
    NavicIconsOperator = { fg = C.red, bg = background },
    NavicIconsTypeParameter = { fg = C.orange, bg = background },
    NavicText = { fg = C.fg, bg = background },
    NavicSeparator = { fg = C.text, bg = background },
  }
end

return M
