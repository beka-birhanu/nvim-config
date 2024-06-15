local M = {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}

function M.config()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting

    null_ls.setup({
        debug = false,
        sources = {
            formatting.prettierd.with({
                filetypes = {
                    "javascript",
                    "typescript",
                    "javascriptreact",
                    "typescriptreact",
                    "css",
                    "html",
                    "json",
                    "yaml",
                    "markdown",
                    "graphql",
                },
            }),
            formatting.stylua,
            formatting.black,
            formatting.isort,
            formatting.goimports,
            formatting.gofumpt,
            formatting.csharpier,
        },
    })
end

return M
