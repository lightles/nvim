local wk = require("which-key")

---- EZ Windows
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')
nmap('<cr>', 'ciw')

-- remove search highlight
nmap('<C-_>', ':let@/=""<CR>')

-- format
nmap('=', ':lua vim.lsp.buf.format()<CR>')
-- Workspaces
wk.register({
  e = {
    name = "+Workspaces",
    A = { "<cmd>WorkspacesAdd<CR>", "Add Workspace" },
    D = { "<cmd>WorkspacesRemove<CR>", "Delete Workspace" },
    o = { "<cmd>Telescope workspaces<CR>", "Open Workspace" },
  },
}, { prefix = "<leader>" })

-- Search
wk.register({
  s = {
    name = "+Search",
    g = { "<cmd>Telescope live_grep<CR>", "grep" },
    t = { "<cmd>Telescope<CR>", "ALL" },
  },
}, { prefix = "<leader>" })

-- Buffers
wk.register({
  b = {
    name = "+Buffer",
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    d = { "<cmd>bd<CR>", "delete" },
    n = { "<cmd>bn<CR>", "next" },
    p = { "<cmd>bp<CR>", "previous" },
    a = { "<cmd>ball<CR>", "open-all" },
  },
}, { prefix = "<leader>" })

---- Comments
wk.register({
  c = { "<Plug>NERDCommenterToggle", "comment" },
}, { prefix = "<leader>" })

wk.register({
  c = { "<Plug>NERDCommenterToggle", "comment" },
}, { prefix = "<leader>", mode = "v" })

wk.register({
  C = {
    name = "+Comment",
    y = { "<Plug>NERDCommenterYank", "Yank&comment" },
  },
}, { prefix = "<leader>" })

wk.register({
  C = {
    name = "+Comment",
    y = { "<Plug>NERDCommenterYank", "Yank&comment" },
  },
}, { prefix = "<leader>", mode = "v" })

-- Windows
wk.register({
  w = {
    name = "+Window",
    s = { "<cmd>split<CR>", "hSplit" },
    v = { "<cmd>vsplit<CR>", "vSplit" },
    d = { "<cmd>q<CR>", "close" },
    q = { "<cmd>q<CR>", "close" },
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
    c = { "<cmd>set scrollbind<CR>", "scroll-bind" },
  },
}, { prefix = "<leader>" })

-- Files
wk.register({
  f = {
    name = "+Files",
    t = { "<cmd>NERDTreeToggle<CR>", "file-tree" },
    f = { "<cmd>Telescope find_files<CR>", "find-files" },
    g = { "<cmd>Telescope git_files<CR>", "find-git-files" },
    --F = { "<cmd>call myCore#SshEdit()<CR>", "find-remote" },
  },
}, { prefix = "<leader>" })

-- System
wk.register({
  q = {
    name = "+System",
    q = { "<cmd>qall<CR>", "quit" },
    Q = { "<cmd>qall!<CR>", "force-quit" },
    w = { "<cmd>w<CR>", "write" },
    W = { "<cmd>wall<CR>", "write-all-quit" },
    c = { "<cmd>checkhealth<CR>", "neovim-health" },
    u = { "<cmd>call myCore#UpdatePlugins()<CR>", "update" },
  },
}, { prefix = "<leader>" })

-- Git
wk.register({
  g = {
    name = "+Git",
    g = { "<cmd>bufdo :e<CR>", "reload-files" },
    f = {
      name = "+Find",
      f = { "<cmd>Telescope git_files<CR>", "files" },
      c = { "<cmd>Telescope git_commits<CR>", "commits" },
      b = { "<cmd>Telescope git_branches<CR>", "branches" },
      S = { "<cmd>Telescope git_stash<CR>", "stash" },

    },
    s = { "<cmd>Telescope git_status<CR>", "status" },
    n = { "<cmd>GitGutterNextHunk<CR>", "next-hunk" },
    p = { "<cmd>GitGutterPrevHunk<CR>", "previous-hunk" },
    d = { "<cmd>Gvdiffsplit<cr>", "diff" },
  },
}, { prefix = "<leader>" })

-- Help
wk.register({
  h = { "<cmd>Help<CR>", "Help" },
}, { prefix = "<leader>" })

-- global local leader keys
wk.register({
  a = { "<cmd>SymbolsOutline<CR>", "Symbols" },
  t = { "<cmd>TroubleToggle<CR>", "Trouble" },
}, { prefix = "<localleader>" })
