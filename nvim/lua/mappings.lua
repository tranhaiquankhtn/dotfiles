local utils = require('utils')

utils.map('n', '<C+,>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', '<c-c>', '<Esc>')


utils.map('n', '<Space>', '<NOP>')
utils.map('n', '<C-l>', ':NERDTreeToggle<CR>')

-- navigate between buffers
utils.map('n', '<TAB>', ':bnext<CR>')
utils.map('n', '<S-TAB>', ':bprevious<CR>')

-- navigate between windows
utils.map('n', '<Leader>h', '<C-w>h')
utils.map('n', '<Leader>j', '<C-w>j')
utils.map('n', '<Leader>k', '<C-w>k')
utils.map('n', '<Leader>l', '<C-w>l')

-- resize windows
-- nnoremap <Leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
utils.map('n', '<C-]>', ':vertical resize +5<CR>')
utils.map('n', '<C-[>', ':vertical resize -5<CR>')


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

-- utils.map('n', '<Leader>d', '\"_d')
-- utils.map('v', '<Leader>d', '\"_d')
