"function! myCore#SshEdit()
  ""let curline = getline('.')
  "call inputsave()
  "let ssh_user = input('Enter ssh user: ')
  "call inputrestore()
  "call inputsave()
  "let ssh_host = input('Enter ssh host: ')
  "call inputrestore()
  "call inputsave()
  "let ssh_file = input('Enter file name: ')
  "call inputrestore()
  "execute "edit scp://". ssh_user. "@". ssh_host. "/". ssh_file
  ""call setline('.', curline . ' ' . name)
"endfunction

function! myCore#UpdatePlugins()
    source ~/.config/nvim/init.lua
    execute 'PackerSync'
    execute 'MasonUpdate'
endfunction	

function! myCore#ToggleLineNumbers()
    :set number! | set norelativenumber!
    IndentLinesToggle
endfunction

"function! myCore#AddATODOAboveLine()
    "call append(line(".")-1, "TODO ")
    "execute "normal k"
    "execute "normal \<Plug>NERDCommenterToggle"
    "execute "normal =="
    "execute "normal \<End>bi"." "
    "startinsert!
"endfunction
