if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'itchyny/vim-gitbranch'
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'akinsho/toggleterm.nvim', {'tag': '*'}
	Plug 'akinsho/bufferline.nvim', {'tag': 'v3.*'}
	Plug 'm4xshen/autoclose.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
        Plug 'nvim-telescope/telescope-file-browser.nvim'
	Plug 'kevinhwang91/nvim-ufo', {'do': 'make'}
	Plug 'kevinhwang91/promise-async'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-colortils/colortils.nvim'
	Plug 'SmiteshP/nvim-navic'
	Plug 'neovim/nvim-lspconfig'
	Plug 'ThePrimeagen/git-worktree.nvim'
	Plug 'nvim-lualine/lualine.nvim'
        Plug 'williamboman/mason.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'terryma/vim-multiple-cursors'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-commentary'
	Plug 'f4z3r/gruvbox-material.nvim'

call plug#end()
