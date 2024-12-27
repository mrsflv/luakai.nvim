local M = {}

function M.get()
  local virtual_text = O.integrations.native_lsp.virtual_text
  local underlines = O.integrations.native_lsp.underlines

  local error = C.red
  local warning = C.yellow
  local info = C.blue
  local hint = C.green
  local darkening_percentage = 0.095

  return {
    -- These groups are for the native LSP clienC. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { link = "CurrentWord" }, -- used for highlighting "text" references
    LspReferenceRead = { link = "CurrentWord" }, -- used for highlighting "read" references
    LspReferenceWrite = { link = "CurrentWord" }, -- used for highlighting "write" references
    -- hightlight diagnostics in numberline

    DiagnosticVirtualTextError = {
      bg = O.transparent_background and C.none or U.darken(error, darkening_percentage, C.bg0),
      fg = error,
      style = virtual_text.errors,
    }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextWarn = {
      bg = O.transparent_background and C.none or U.darken(warning, darkening_percentage, C.bg0),
      fg = warning,
      style = virtual_text.warnings,
    }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextInfo = {
      bg = O.transparent_background and C.none or U.darken(info, darkening_percentage, C.bg0),
      fg = info,
      style = virtual_text.information,
    }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextHint = {
      bg = O.transparent_background and C.none or U.darken(hint, darkening_percentage, C.bg0),
      fg = hint,
      style = virtual_text.hints,
    }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticError = { bg = C.none, fg = error, style = virtual_text.errors }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { bg = C.none, fg = warning, style = virtual_text.warnings }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { bg = C.none, fg = info, style = virtual_text.information }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { bg = C.none, fg = hint, style = virtual_text.hints }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticDeprecated = { bg = C.none, fg = C.gray, style = { "strikethrough" }, sp = C.gray }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineError = { bg = C.none, fg = C.none, style = underlines.errors, sp = error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { bg = C.none, fg = C.none, style = underlines.warnings, sp = warning }, -- Used to underline "Warn" diagnostics
    DiagnosticUnderlineInfo = { bg = C.none, fg = C.none, style = underlines.information, sp = info }, -- Used to underline "Info" diagnostics
    DiagnosticUnderlineHint = { bg = C.none, fg = C.none, style = underlines.hints, sp = hint }, -- Used to underline "Hint" diagnostics
    DiagnosticFloatingError = { fg = error }, -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn = { fg = warning }, -- Used to color "Warn" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo = { fg = info }, -- Used to color "Info" diagnostic messages in diagnostics float
    DiagnosticFloatingHint = { fg = hint }, -- Used to color "Hint" diagnostic messages in diagnostics float
    DiagnosticSignError = { fg = error }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn = { fg = warning }, -- Used for "Warn" signs in sign column
    DiagnosticSignInfo = { fg = info }, -- Used for "Info" signs in sign column
    DiagnosticSignHint = { fg = hint }, -- Used for "Hint" signs in sign column
    LspDiagnosticsDefaultError = { fg = error }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning = { fg = warning }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation = { fg = info }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint = { fg = hint }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspSignatureActiveParameter = { fg = C.orange },
    -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsError = { fg = error },
    LspDiagnosticsWarning = { fg = warning },
    LspDiagnosticsInformation = { fg = info },
    LspDiagnosticsHint = { fg = hint },
    LspDiagnosticsVirtualTextError = { fg = error, style = virtual_text.errors }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { fg = warning, style = virtual_text.warnings }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { fg = info, style = virtual_text.warnings }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { fg = hint, style = virtual_text.hints }, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = { style = underlines.errors, sp = error }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { style = underlines.warnings, sp = warning }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { style = underlines.information, sp = info }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { style = underlines.hints, sp = hint }, -- Used to underline "Hint" diagnostics
    LspCodeLens = { fg = C.bg1 }, -- virtual text of the codelens
    LspInfoBorder = { fg = C.bg3 }, -- LspInfo border
    LspInlayHint = { link = "Comment" },
  }
end

return M
