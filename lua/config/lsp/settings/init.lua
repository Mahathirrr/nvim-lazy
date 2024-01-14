local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("neonnex.config.lsp.mason")
require("neonnex.config.lsp.config") -- ini hanya untuk windows supaya jdtls jalan, kalau pakai linu x remark saja
require("neonnex.config.lsp.handlers").setup()
require("neonnex.config.lsp.null-ls")
