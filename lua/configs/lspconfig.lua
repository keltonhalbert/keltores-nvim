-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
local servers = {
  "html",
  "cssls",
  "clangd",
  "svelte",
  "ts_ls",
  "cmake",
  "eslint",
  "lua_ls",
  "tailwindcss",
  "zls",
}

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

vim.lsp.config("basedpyright", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    basedpyright = {
      analysis = {
        useLibraryCodeForTypes = true,
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        autoSearchPath = true,
        inlayHints = {
          callArgumentNames = true,
        },
      },
    },
  },
})

-- enable all servers at once
vim.lsp.enable(servers)
vim.lsp.enable { "basedpyright" }
