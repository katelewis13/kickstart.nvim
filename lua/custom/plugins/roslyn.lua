return {
  'jmederosalvarado/roslyn.nvim',
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
    require('roslyn').setup {
      dotnet_cmd = 'dotnet', -- this is the default
      roslyn_version = '4.8.0-3.23475.7', -- this is the default
      capabilities = capabilities,
      on_attach = function() end,
    }
  end,
}
