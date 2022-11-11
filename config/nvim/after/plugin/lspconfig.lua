local lsp_config = require("lspconfig")

lsp_config["tsserver"].setup({})
lsp_config["rust_analyzer"].setup({})
-- Start the correct server if it's install when enter on file
