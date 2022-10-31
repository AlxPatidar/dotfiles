local lsp_install_status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not lsp_install_status_ok then
  return
end

lsp_installer.on_server_ready(function(server)
  local opts = {}
    if server.name == "sumneko_lua" then
    opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
        }
      }
    }
  end
  server:setup(opts)
end)
