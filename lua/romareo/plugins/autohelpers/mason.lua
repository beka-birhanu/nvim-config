local M = {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
}

function M.config()
	local servers = {
		"lua_ls",
		"bashls",
		"tsserver",
		"pyright",
		"html",
		"cssls",
		"tailwindcss",
		"emmet_ls",
		"csharp_ls",
		"dockerls",
		"prismals",
		"docker_compose_language_service",
	}

	require("mason").setup({
		ui = {
			border = "rounded",
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = servers,
	})
end

return M
