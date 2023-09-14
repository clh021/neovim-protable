require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"bashls",
		"tsserver",
		"cssls",
		"dockerls",
		"emmet_ls",
		"html",
		"jsonls",
		"pyright",
		"yamlls",
		"gopls",
	},
})

-- 使 cmp 与 lsp 结合
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
})
