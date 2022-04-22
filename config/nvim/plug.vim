call plug#begin('~/.vim/plugged')
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'jiangmiao/auto-pairs'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'tami5/lspsaga.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'mhinz/vim-startify'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'xiyaowong/nvim-transparent'
    Plug 'mhartington/formatter.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'BurntSushi/ripgrep'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope-media-files.nvim'
    Plug 'pwntester/octo.nvim'
    Plug 'lewis6991/hover.nvim'
    Plug 'saecki/crates.nvim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'arkav/lualine-lsp-progress'

    Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
call plug#end()
