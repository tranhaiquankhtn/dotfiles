" source these files
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

" plugins config
source $HOME/.config/nvim/plug-config/startup.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/nerd.vim
source $HOME/.config/nvim/plug-config/fzf.vim
" source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/vim-go.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim

" lua 
luafile $HOME/.config/nvim/lua/init.lua
luafile $HOME/.config/nvim/lua/compe-config.lua
luafile $HOME/.config/nvim/lua/python-ls.lua
luafile $HOME/.config/nvim/lua/js-ts-ls.lua
luafile $HOME/.config/nvim/lua/vue-ls.lua
luafile $HOME/.config/nvim/lua/bash-ls.lua
luafile $HOME/.config/nvim/lua/go-ls.lua
luafile $HOME/.config/nvim/lua/html-ls.lua
luafile $HOME/.config/nvim/lua/docker-ls.lua
luafile $HOME/.config/nvim/lua/efm-formatter.lua


" themes
" source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/gruvbox.vim


if executable('rg')
    let g:rg_derive_root='true'
endif
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


