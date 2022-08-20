local packpath = '~/.local/share/nvim/site/pack/packer/opt/'
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
 packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
 vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'liuchengxu/space-vim-theme'
    use 'itchyny/lightline.vim'
    use 'junegunn/goyo.vim'
    
    use 'folke/which-key.nvim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    use 'scrooloose/nerdtree'
    use 'preservim/nerdcommenter'
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'Yggdroot/indentLine'
    use 'neovim/nvim-lspconfig'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

