local packpath = '~/.local/share/nvim/site/pack/packer/opt/'
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
 packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
 vim.cmd [[packadd packer.nvim]]
end
return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'
    -- theme
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'ellisonleao/gruvbox.nvim'
    -- give me workspaces
    use 'natecraddock/workspaces.nvim'
    -- show me my keybinds
    use 'folke/which-key.nvim'
    -- give me good search
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- file tree only for peer 
    use 'scrooloose/nerdtree'
    -- comments
    use 'preservim/nerdcommenter'
    -- git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'
    -- usefull 
    use 'tpope/vim-surround'
    use 'Yggdroot/indentLine'
    -- LSP!!
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- better fFtT so i can use my ; and ,
    use 'rhysd/clever-f.vim'
    -- syntax
    use 'pearofducks/ansible-vim'
    use 'mfukar/robotframework-vim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
