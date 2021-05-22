local utils = require('utils')

utils.map('n', '<C+,>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape


utils.map('n', '<Space>', '<NOP>')
utils.map('n', '<C-l>', ':NERDTreeToggle<CR>')

-- navigate between buffers
utils.map('n', '<TAB>', ':bnext')
utils.map('n', '<S-TAB>', ':bprevious')

-- navigate between windows
utils.map('n', '<Leader>h', ':set wincmd h<CR>')
utils.map('n', '<Leader>j', ':set wincmd j<CR>')
utils.map('n', '<Leader>k', ':set wincmd k<CR>')
utils.map('n', '<Leader>l', ':set wincmd l<CR>')

-- Better indenting
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- TAB Completion
utils.map('i', '<expr><TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"')
