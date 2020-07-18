
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineno', 'percent' ],
      \             [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex'] ],
      \ },
      \ 'component': {
      \   'fugitive': '%{&filetype=="help"?"":exists("*fugitive#head")?fugitive#head():""}',
      \ },
      \ }

let g:lightline#bufferline#filename_modifier = ':t' " only filename, no path
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#unicode_symbols = 0
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#min_buffer_count = 2

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
