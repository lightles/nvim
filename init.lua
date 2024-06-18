local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- THEME
  'ellisonleao/gruvbox.nvim',
  'karoliskoncevicius/oldbook-vim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  -- workspaces
  'natecraddock/workspaces.nvim',
  -- keybinds interface
  'folke/which-key.nvim',
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', },
  },
  -- file tree
  'nvim-tree/nvim-tree.lua',
  -- comments
  'preservim/nerdcommenter',
  -- git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',
  -- usefull
  'tpope/vim-surround',
  'lukas-reineke/indent-blankline.nvim',
  -- movement
  --{
    --"ggandor/leap.nvim",
    --config = function() require("leap").set_default_keymaps() end
  --},
  'matze/vim-move',
  'MattesGroeger/vim-bookmarks',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  -- syntax
  --use 'pearofducks/ansible-vim'
  'mfukar/robotframework-vim',
  'folke/neodev.nvim',
  'mfussenegger/nvim-lint',
  -- LSP
  'folke/trouble.nvim',
  'neovim/nvim-lspconfig',
  'simrat39/symbols-outline.nvim',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets', },
  },
  'saadparwaiz1/cmp_luasnip',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  -- better fFtT so i can use my ; and ,
  'rhysd/clever-f.vim',
  'lepture/vim-jinja',
}
require("lazy").setup(plugins, opts)
