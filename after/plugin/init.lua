require'lspconfig'.pyright.setup{}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.robotframework_ls.setup{
    settings = {
        robot
    }
}
require("workspaces").setup({
    hooks = {
        open = { "Telescope find_files" },
    }
})
require('telescope').load_extension('workspaces')
require("mason").setup()
require("mason-lspconfig").setup()
require('lualine').setup {
  options = { theme = 'gruvbox' }
}
require('nvim-web-devicons').setup()

vim.api.nvim_command('autocmd BufNewFile,BufRead *.robot set filetype=robot')
vim.api.nvim_command('autocmd BufNewFile,BufRead *.yaml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufNewFile,BufRead *.yml set filetype=yaml.ansible')
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


vim.g.NERDTreeShowHidden=1

vim.api.nvim_command('command WQ wq')
vim.api.nvim_command('command Wq wq')
vim.api.nvim_command('command Wa wa')
vim.api.nvim_command('command W w')
vim.api.nvim_command('command Q q')

vim.g.gitgutter_map_keys = 0

--vim.g.vim_json_conceal = 0
--vim.g.indentLine_setConceal = 0
require("lspconfig")
