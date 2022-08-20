function! myCore#SshEdit()
  "let curline = getline('.')
  call inputsave()
  let ssh_user = input('Enter ssh user: ')
  call inputrestore()
  call inputsave()
  let ssh_host = input('Enter ssh host: ')
  call inputrestore()
  call inputsave()
  let ssh_file = input('Enter file name: ')
  call inputrestore()
  execute "edit scp://". ssh_user. "@". ssh_host. "/". ssh_file
  "call setline('.', curline . ' ' . name)
endfunction

function! myCore#UpdatePlugins()
    source ~/.config/nvim/init.lua
    execute 'PackerSync'
endfunction	

function! myCore#ToggleLineNumbers()
    :set number! | set norelativenumber!
    IndentLinesToggle
endfunction

function! myCore#WriteAndDeleteTrailingWhitespace()
    :let _s=@/|:%s/\s\+$//e|:let @/=_s|:write
endfunction

function! myCore#RunAndPreviewPlantUML()
    execute "silent !java -jar $HOME/.config/nvim/bin/plantuml.jar -tsvg " . expand('%:p')
	execute "silent !open -a ". g:default_preview_browser . " " . expand('%:p:r') . ".svg"
endfunction

function! myCore#AddATODOAboveLine()
    call append(line(".")-1, "TODO ")
    execute "normal k"
    execute "normal \<Plug>NERDCommenterToggle"
    execute "normal =="
    execute "normal \<End>bi"." "
    startinsert!
endfunction
