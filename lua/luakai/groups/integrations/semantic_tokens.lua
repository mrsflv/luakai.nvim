local M = {}

function M.get()
  return {
    ["@lsp.type.type"] = {},
    ["@lsp.type.enum"] = {},
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.keyword"] = {},
    ["@lsp.type.interface"] = {},
    ["@lsp.type.namespace"] = {},
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.class"] = {},
    ["@lsp.type.property"] = {},
    ["@lsp.type.variable"] = {},
    ["@lsp.type.struct"] = {},
    ["@lsp.type.macro"] = { fg = C.purple, style = { "italic" } },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.interface.defaultLibrary"] = { link = "@function.builtin" },
  }
end

return M
