require'lspconfig'.pyright.setup{}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.robotframework_ls.setup{
    settings = {
    robot}
}
require("workspaces").setup({
    hooks = {
        open = { "Telescope find_files" },
    }
})
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  -- Install parsers synchronously (only applied to `ensure_installed`)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "yaml", "go", "python", "dockerfile", "gitattributes", "gitignore", "json", "markdown" },
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,
  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { },
  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
    -- disable = { },
    additional_vim_regex_highlighting = true,
  },
}
require('telescope').load_extension('workspaces')

vim.api.nvim_command('autocmd BufNewFile,BufRead *.robot setfiletype robot')
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

