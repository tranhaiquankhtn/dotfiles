
hi Comment cterm=italic
syntax on


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

set termguicolors

colorschem gruvbox
let g:gruvbox_contrast_dark = 'hard'
