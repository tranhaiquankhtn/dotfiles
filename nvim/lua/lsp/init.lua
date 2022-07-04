DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')
LSP_SERVERS = vim.fn.getenv("XDG_DATA_HOME") .. "/nvim/lsp_servers"

vim.o.completeopt = "menuone,noselect"
local signs = { Error = "😡", Warning = "🤯", Hint = "✨", Information = "🤩" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- autoformat
-- vim.cmd 'autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()'
vim.cmd 'autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.vue lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.sh lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.yml lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.toml lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.dockerfile lua vim.lsp.buf.formatting_sync(nil, 1000)'
vim.cmd 'autocmd BufWritePre *.java lua vim.lsp.buf.formatting_sync(nil, 1000)'
-- vim.cmd 'autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 1000)'
-- vim.cmd 'autocmd BufWritePre *.css lua vim.lsp.buf.formatting_sync(nil, 1000)'

local function documentHighlight(client, bufnr)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]       ,
            false
        )
    end
end

local utils = require('utils')

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)

end

-- local lsp_flags = {
--     -- This is the default in Nvim 0.7+
--     debounce_text_changes = 150,
-- }

require('nvim-lsp-installer').setup {}
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_config = {
    capabilities = capabilities
}

function lsp_config.common_on_attach(client, bufnr)
    documentHighlight(client, bufnr)
    on_attach(client, bufnr)
end

function lsp_config.tsserver_on_attach(client, bufnr)
    lsp_config.common_on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

function lsp_config.vuels_on_attach(client, bufnr)
    lsp_config.common_on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

return lsp_config
