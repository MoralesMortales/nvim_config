if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'akinsho/toggleterm.nvim', {'tag': '*'}
	Plug 'akinsho/bufferline.nvim', {'tag': 'v3.*'}
	Plug 'm4xshen/autoclose.nvim'
call plug#end()
