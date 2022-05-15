local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("gwoo.lsp-setup.lsp.lsp-installer")
require("gwoo.lsp-setup.lsp.handlers").setup()
