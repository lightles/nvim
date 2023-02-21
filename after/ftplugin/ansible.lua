function ansible_yaml_ftswap()
    if vim.bo.filetype == 'yaml.ansible' then
        vim.bo.filetype='yaml'
    elseif vim.bo.filetype == 'yaml' then
        vim.bo.filetype='yaml.ansible'
    end
end

local wk = require("which-key")

wk.register({
  v = { "<cmd>lua ansible_yaml_ftswap()<cr>", "swap_ft"
  },
}, { prefix = "<localleader>" })

