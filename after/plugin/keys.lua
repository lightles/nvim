
local wk = require("which-key")
---- Windows
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- remove search highlight
nmap('<C-_>', ':let@/=""<CR>')


-- Workspaces
wk.register({
  e = {
    name = "+Workspaces",
    A = { "<cmd>WorkspacesAdd<CR>", "Add Workspace" },
    o = { "<cmd>WorkspacesOpen<CR>", "Open Workspace" },
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
    --s = { "<cmd>Files ~/<CR>", "find-all" },
    --F = { "<cmd>call myCore#SshEdit()<CR>", "find-remote" },
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
    d = { "<cmd>Gdiffsplit<cr>", "diff" },
  },
}, { prefix = "<leader>" })

-- Help
wk.register({
  h = { "<cmd>Help<CR>", "Help" ,
  },
}, { prefix = "<leader>" })
