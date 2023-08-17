local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'lua_ls',
    'pylsp',
    'omnisharp',
    'bashls'

})

lsp.on_attach(function (client)
    client.server_capabilities.semanticTokensProvider = nil

end)
lsp.setup()
