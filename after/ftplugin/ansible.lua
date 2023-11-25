function ansible_yaml_ftswap()
  if vim.bo.filetype == 'yaml.ansible' then
    vim.bo.filetype = 'yaml'
  elseif vim.bo.filetype == 'yaml' then
    vim.bo.filetype = 'yaml.ansible'
  end
end

function ansible_yaml_keywordprg()
  local word = vim.fn.expand("<cWORD>"):gsub(":", ""):gsub("#", "")
  vim.api.nvim_command(':tabnew | set filetype=yaml | r !ansible-doc ' .. word)
  vim.api.nvim_command('normal gg')
  vim.api.nvim_command('set nomodifiable')
  vim.keymap.set("n", "q", ":set modifiable | bd!<cr>", { silent = true, buffer = vim.fn.bufnr() })
end

function ansible_yaml_keyword_online_docs()
  local word = vim.fn.expand("<cWORD>"):gsub(":", ""):gsub("#", ""):gsub('%.', "/")
  vim.api.nvim_command('r !open -u ' .. 'https://docs.ansible.com/ansible/latest/collections/' .. word .. '_module.html')
end

vim.g.ansible_extra_keywords_highlight = 1

local wk = require("which-key")
wk.register({
  v = { "<cmd>lua ansible_yaml_ftswap()<cr>", "swap_ft" },
  K = { "<cmd>lua ansible_yaml_keyword_online_docs()<cr>", "online_ansible_docs" },
  k = { "<cmd>lua ansible_yaml_keywordprg()<cr>", "ansible_docs" },
}, { prefix = "<localleader>" })


vim.api.nvim_command("command -nargs=+ AnsibleKeywordprg lua ansible_yaml_keywordprg()")
vim.api.nvim_command("set keywordprg=:AnsibleKeywordprg")
