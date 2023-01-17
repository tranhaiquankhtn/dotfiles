local ok, ls = pcall(require, 'luasnip')
if not ok then return end

ls.config.set_config({
    history = true,
    enable_autosnippets = true,
    region_check_events = 'InsertEnter',
    delete_check_events = 'InsertLeave'
})

if package.loaded['luasnip.loaders.from_vscode'] == nil then
    require('luasnip.loaders.from_vscode').lazy_load()
end
