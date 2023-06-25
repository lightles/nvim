--vim.cmd 'colorscheme gruvbox'
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.cmd 'hi DiffAdd gui=NONE ctermfg=black ctermbg=blue'
vim.cmd "hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE"
vim.cmd "hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=240 gui=NONE cterm=NONE"
vim.cmd "hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=255 gui=NONE cterm=NONE"
vim.cmd "hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse"
--vim.cmd "hi yamlPlainScalar ctermfg=204"
--vim.cmd "hi yamlFlowString ctermfg=136"
--vim.cmd "hi yamlInteger ctermfg=222"
vim.api.nvim_set_hl(0, "TelescopeBorder", {ctermfg=142})
vim.api.nvim_set_hl(0, "TelescopeNormal", {ctermbg=234})
