
local wk = require("which-key")
---- Windows
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- remove search highlight
-- nmap('n', '<C-_>', ':let@/=""<CR>')


-- Buffers
wk.register({
  b = {
    name = "+Buffer",
    b = { "<cmd>Buffers<CR>", "Buffers" },
    d = { "<cmd>bd<CR>", "delete" },
    n = { "<cmd>bn<CR>", "next" },
    p = { "<cmd>bp<CR>", "previous" },
    a = { "<cmd>ball<CR>", "open-all" },
  },
}, { prefix = "<leader>" })

---- Comments
wk.register({
  c  = { "<Plug>NERDCommenterToggle", "comment" },
  Cy = { "<Plug>NERDCommenterYank", "Yank&comment"},
}, { prefix = "<leader>" })

wk.register({
  c  = { "<Plug>NERDCommenterToggle", "comment" },
  Cy = { "<Plug>NERDCommenterYank", "Yank&comment"},
}, { prefix = "<leader>", mode = "v" })
 
-- Windows
wk.register({
  w = {
    name = "+Window",
    s = { "<cmd>split<CR>", "hSplit" },
    v = { "<cmd>vsplit<CR>", "vSplit" },
    d = { "<cmd>q<CR>", "close" },
    h = { "<C-w>h", "left" },
    j = { "<C-w>j", "down" },
    k = { "<C-w>k", "up" },
    l = { "<C-w>l", "right" },
    w = { "<C-w>w", "other" },
    o = { "<C-w>o", "close-others" },
    r = { "<C-w>=", "equalize-size" },
  },
}, { prefix = "<leader>" })

-- Tabs
wk.register({
  t = {
    name = "+Tabs",
    n = { "<cmd>tabnext<CR>", "next" },
    p = { "<cmd>tabprevious<CR>", "previous" },
    d = { "<cmd>tabclose<CR>", "close" },
    c = { "<cmd>tabnew<CR>", "create" },
  },
}, { prefix = "<leader>" })

-- Toggles
wk.register({
  T = {
    name = "+Toggle",
    i = { "<cmd>set paste!<CR>", "paste-mode" },
    l = { "<cmd>call myCore#ToggleLineNumbers()<CR>", "line-numbers" },
    g = { "<cmd>GitGutterToggle<CR>", "git-gutter" },
  },
}, { prefix = "<leader>" })

-- Files
wk.register({
  f = {
    name = "+Files",
    t = { "<cmd>NERDTreeToggle<CR>", "file-tree" },
    f = { "<cmd>Files<CR>", "find" },
    g = { "<cmd>GFiles<CR>", "git-find" },
    s = { "<cmd>Files ~/<CR>", "find-all" },
    F = { "<cmd>call myCore#SshEdit()<CR>", "find-remote" },
  },
}, { prefix = "<leader>" })

-- System
wk.register({
  q = {
    name = "+System",
    c = { "<cmd>checkhealth<CR>", "neovim-health" },
    u = { "<cmd>call myCore#UpdatePlugins()<CR>", "update" },
  },
}, { prefix = "<leader>" })

-- Git
wk.register({
  g = {
    name = "+Git",
    n = { "<cmd>GitGutterNextHunk(<CR>", "next-hunk" },
    p = { "<cmd>GitGutterPrevHunk(<CR>", "previous-hunk" },
  },
}, { prefix = "<leader>" })


-- " GOYO
-- map('n', '<leader>1', ':Goyo<CR>')
-- nmap <leader>1 :Goyo<CR>
-- let g:which_key_map_normal_leader.1 =  'Goyo'
-- 
