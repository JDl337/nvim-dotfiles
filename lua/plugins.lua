local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- My plugins here
  use 'neovim/nvim-lspconfig'
  use { 'ms-jpq/coq_nvim' , branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' , requires = {{'ms-jpq/coq_nvim'}}}

  use 'nvim-tree/nvim-web-devicons'
  use 'unblevable/quick-scope'
  use 'sainnhe/gruvbox-material'
  use 'mbbill/undotree'
  use 'tpope/vim-surround'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'voldikss/vim-floaterm'
  use 'mfussenegger/nvim-dap'
  use 'machakann/vim-sandwich'

  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    -- or                          , tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
