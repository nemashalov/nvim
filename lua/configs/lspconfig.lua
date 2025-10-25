local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup {
  ensure_installed = {"vimls","lua_ls", "pyright","gopls" },
  automatic_installation = true,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
if vim.fn.executable("nvim-cmp") then
  local cmp_lsp = pcall(require, "cmp_nvim_lsp")
  if cmp_lsp then
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
  end
end

--- 🔧 Utility: Set keymaps and options on buffer attach
local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr, silent = true }
  -- Set omnifunc for autocompletion
  vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
  -- Hover docs
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end


vim.lsp.config["lua_ls"]={
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false },
    },
  },
}

vim.lsp.config["pyright"]={
  capabilities = capabilities,
  on_attach = on_attach,
}
