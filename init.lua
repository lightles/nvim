local packpath = '~/.local/share/nvim/site/pack/packer/opt/'
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- PACKER
  use 'wbthomason/packer.nvim'
  -- THEME
  use 'ellisonleao/gruvbox.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { { 'nvim-tree/nvim-web-devicons' } }
  }
  -- workspaces
  use 'natecraddock/workspaces.nvim'
  -- keybinds interface
  use 'folke/which-key.nvim'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
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
  -- syntax
  use 'pearofducks/ansible-vim'
  use 'mfukar/robotframework-vim'
  use 'folke/neodev.nvim'
  use 'mfussenegger/nvim-lint'
  -- LSP
  use 'folke/trouble.nvim'
  use 'neovim/nvim-lspconfig'
  use 'simrat39/symbols-outline.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'rafamadriz/friendly-snippets'
  use {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
  }
  use 'saadparwaiz1/cmp_luasnip'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- better fFtT so i can use my ; and ,
  use 'rhysd/clever-f.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
