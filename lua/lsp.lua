--| Lsp Configuration |--
require("mason").setup {}
require("mason-lspconfig").setup {}

require("lspconfig").pylsp.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}

vim.diagnostic.config ({
	virtual_text = false
})
