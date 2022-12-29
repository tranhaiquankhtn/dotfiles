local utils = require('utils')

utils.map('n', '<C-c>', '<cmd>noh<CR>') -- Clear highlights
-- utils.map('i', '<c-c>', '<Esc>')


utils.map('n', '<Space>', '<NOP>')
utils.map('n', '<C-\\>', ':NvimTreeToggle<CR>')
utils.map('n', '<Leader>r', ':NvimTreeRefresh<CR>')

-- navigate between buffers
utils.map('n', '<C-e>', ':bw<CR>')
utils.map('n', '<TAB>', ':bnext<CR>')
utils.map('n', '<S-TAB>', ':bprevious<CR>')

-- navigate between windows
utils.map('n', '<Leader>h', '<C-w>h')
utils.map('n', '<Leader>j', '<C-w>j')
utils.map('n', '<Leader>k', '<C-w>k')
utils.map('n', '<Leader>l', '<C-w>l')

-- resize windows
-- nnoremap <Leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
utils.map('n', '<C-w><', ':vertical resize +5<CR>')
utils.map('n', '<C-w>>', ':vertical resize -5<CR>')

utils.map('n', '<C-w>+', ':resize +5<CR>')
utils.map('n', '<C-w>-', ':resize -5<CR>')


-- Better indenting
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- TAB Completion
utils.map('i', '<expr><TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"')

-- move line up and down
utils.map('v', 'J', ':m \'>+1<CR>gv=gv')
utils.map('v', 'K', ':m \'<-2<CR>gv=gv')


-- greatest remap ever
-- utils.map('v', '<Leader>p', '\"_dP')
-- vnoremap <leader>p "_dP

-- next greatest remap ever : asbjornHaland
-- utils.map('n', '<Leader>y', '\"+y')
-- utils.map('v', '<Leader>y', '\"+y')
utils.map('n', '<Leader>Y', 'gg\"+yG')
utils.map('n', 'Y', 'y$')

-- utils.map('n', '<Leader>d', '\"_d')
-- utils.map('v', '<Leader>d', '\"_d')
-- utils.map('t', '<C-\\>', '<C-\\><C-n>:FloatermHide<CR>')
-- utils.map('n', '<C-\\>', ':FloatermToggle<CR>')
--


-- JDTLS mappings
utils.map("n", "<Leader>coa", "<Cmd>lua require'jdtls'.organize_imports()<CR>")
utils.map("n", "<Leader>dt", "<Cmd>lua require'jdtls'.test_class()<CR>")
utils.map("n", "<Leader>dn", "<Cmd>lua require'jdtls'.test_nearest_method()<CR>")
utils.map("v", "<Leader>crv", "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>")
utils.map("n", "<Leader>crv", "<Cmd>lua require('jdtls').extract_variable()<CR>")
utils.map("v", "<Leader>crm", "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>")
utils.map("n", "<Leader>crc", "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>")
