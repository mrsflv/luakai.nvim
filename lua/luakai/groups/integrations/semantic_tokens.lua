local M = {}

function M.get()
    return {
            ["@lsp.type.enum"] = { link = "@type" },
            ["@lsp.type.enumMember"] = { link = "@constant" },
            ["@lsp.type.keyword"] = { link = "@keyword" },
            ["@lsp.type.interface"] = { link = "@interface" },
            ["@lsp.type.namespace"] = { link = "@namespace" },
            ["@lsp.type.parameter"] = { link = "@parameter" },
            ["@lsp.type.class"] = { link = "@type" },
            ["@lsp.type.property"] = { link = "@property" },
            ["@lsp.type.variable"] = { link = "@variable"}, -- use treesitter styles for regular variables
            ["@lsp.type.macro"] = { style = {"italic"}}, -- use treesitter styles for regular variables
            ["@lsp.type.comment"] = { link = "@comment"}, -- use treesitter styles for regular variables
            ["@lsp.typemod.function.defaultLibrary"] = { style = {'italic'} },
            ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    }
end

return M
