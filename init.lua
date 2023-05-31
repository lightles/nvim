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
    use 'liuchengxu/space-vim-theme'
    use 'itchyny/lightline.vim'
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
    -- tree sitter
    use 'nvim-treesitter/nvim-treesitter'
    -- better fFtT so i can use my ; and ,
    use 'rhysd/clever-f.vim'

    -- syntax
    use 'Glench/Vim-Jinja2-Syntax'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
