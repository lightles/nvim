require('nvim-web-devicons').setup()
require('workspaces').setup({
  hooks = {
    open = { "Telescope find_files" },
  }
})
local custom_gruvbox = require 'lualine.themes.gruvbox'
custom_gruvbox.insert.a.bg = '#ffaf00'
require('lualine').setup {
  options = { theme = custom_gruvbox },
  sections = {
    lualine_a = { 'mode' },
    lualine_c = {},
    lualine_b = { 'branch', 'diff', 'diagnostics', 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
require('trouble').setup()
require('telescope').load_extension('workspaces')
require('symbols-outline').setup()
require('nvim-tree').setup()
require('gitsigns').setup()


vim.cmd [[highlight IndentBlanklineIndent guifg=#3a3a3a gui=nocombine]]

vim.cmd [[highlight BookmarkSign ctermbg=NONE guifg=#00afd7]]
vim.g.bookmark_sign = ''

vim.api.nvim_command('autocmd BufNewFile,BufRead *.robot set filetype=robot')
vim.api.nvim_command('autocmd BufNewFile,BufRead *playbook*.yaml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *pb*.yaml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *play*.yaml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *playbook*.yml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *play*.yml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *pb*.yml set filetype=yaml.ansible')

vim.g.mapleader = " "
vim.g.maplocalleader = ";"

-- Functional wrapper for mapping custom keybindings
function map(mode, shortcut, command)
  vim.keymap.set(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

vim.api.nvim_command('command WQ wq')
vim.api.nvim_command('command Wq wq')
vim.api.nvim_command('command Wa wa')
vim.api.nvim_command('command W w')
vim.api.nvim_command('command Q q')
