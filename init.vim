let g:coc_global_config = expand('~/.config/nvim/coc-settings.json')

so ~/.config/nvim/maps.vim
so ~/.config/nvim/vim-plug/plugins.vim
so ~/.config/nvim/coc.vim
so ~/.config/nvim/lua-tree.lua
so ~/.config/nvim/toggleterm.lua
so ~/.config/nvim/telescope.lua
so ~/.config/nvim/nvim-ufo.lua

set number
set rnu
set splitbelow
set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden

set backspace=indent,eol,start

set clipboard=unnamedplus

let g:nvim_tree_auto_close = 0
let g:nvim_tree_quit_on_open = 1
