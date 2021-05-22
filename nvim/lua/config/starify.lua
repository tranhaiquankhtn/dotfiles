vim.g.startify_custom_header = {
        '       _  __     _         __  ___         __     ___ ',
        '      / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        '     /    / |/ / /  ` \\  / /|_/ / _ `/ __/ _ \\  / __/\\ ',
        '    /_/|_/|___/_/_/_/_/ /_/  /_/\\_,_/\\__/_//_/ /____/ ',
}

vim.g.startify_session_dir = '~/.config/nvim/session'
-- vim.g.startify_lists = {
--           { 'type' = 'files',     'header' = '   Files'                        },
--           { 'type' = 'dir',       'header' = '   Current Directory '. getcwd() },
--           { 'type' = 'sessions',  'header' = '   Sessions'                     },
--           { 'type' = 'bookmarks', 'header' = '   Bookmarks'                    },
--       }


vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0

--function! StartifyEntryFormat()
--        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
--    endfunction

-- vim.g.startify_bookmarks = {
--             { 'i': '~/.config/nvim/init.vim' },
--             { 'z': '~/.config/zsh/.zshrc' },
--         }

