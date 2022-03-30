local lsp_installer = require("nvim-lsp-installer")

local opts = {
  noremap = true,
  silent = true
}

local capa = vim.lsp.protocol.make_client_capabilities()
capa = require("cmp_nvim_lsp").update_capabilities(capa)

local function on_attach(client, bufnr)
end

lsp_installer.on_server_ready(function(server)
  local opt = {
    on_attach = on_attach,
    capabilities = capa
  }

  if server.name == "sumneko_lua" then
    opt = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
          --workspace = {
            -- Make the server aware of Neovim runtime files
            --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
          --}
        }
      }
    }
  end

  server:setup(opt)
end)
