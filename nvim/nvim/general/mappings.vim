

let mapleader = " "

" navigate between buffers
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" navigate between windows
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

nnoremap <Leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <C-]> :vertical resize +5<CR>
nnoremap <silent> <C-[> :vertical resize -5<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv
