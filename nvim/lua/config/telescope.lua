vim.cmd 'nnoremap <Leader>p <cmd>lua require("telescope.builtin").find_files()<cr>'
vim.cmd 'nnoremap <Leader>f <cmd>lua require("telescope.builtin").live_grep()<cr>'
vim.cmd 'nnoremap <Leader>b <cmd>lua require("telescope.builtin").buffers()<cr>'
vim.cmd 'nnoremap <leader>fh <cmd>lua require("telescope.builtin").help_tags()<cr>'
