require'lspconfig'.pyright.setup{}
require'lspconfig'.ansiblels.setup{}
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Functional wrapper for mapping custom keybindings
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end


vim.g.NERDTreeShowHidden=1

vim.api.nvim_command('command WQ wq')
vim.api.nvim_command('command Wq wq')
vim.api.nvim_command('command Wa wa')
vim.api.nvim_command('command W w')
vim.api.nvim_command('command Q q')

vim.g.gitgutter_map_keys = 0

