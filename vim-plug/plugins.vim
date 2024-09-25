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
        Plug 'neovim/nvim-lspconfig'
        Plug 'SmiteshP/nvim-navic'
	Plug 'nvim-colortils/colortils.nvim'
	Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
        Plug 'nvim-telescope/telescope-file-browser.nvim'
	Plug 'kevinhwang91/nvim-ufo', {'do': 'make'}
	Plug 'kevinhwang91/promise-async'
call plug#end()
