local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  -- Aesthetics

  use 'joshdick/onedark.vim'
  use 'dracula/vim'
  use 'marko-cerovac/material.nvim'
  use 'sainnhe/sonokai'
  use 'sainnhe/gruvbox-material'
  use 'folke/tokyonight.nvim'
  use 'bryanmylee/vim-colorscheme-icons'
  use 'arcticicestudio/nord-vim'
  use 'junegunn/limelight.vim'
  use 'junegunn/vim-journal'
  use 'junegunn/rainbow_parentheses.vim'
  use 'rhysd/vim-color-spring-night'
  use 'ayu-theme/ayu-vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'nanotech/jellybeans.vim'
  use 'cocopon/iceberg.vim'
  use 'yunlingz/ci_dark'
  use 'olimorris/onedarkpro.nvim'

  -- Functionalities

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'martinda/Jenkinsfile-vim-syntax'
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-neo-tree/neo-tree.nvim'
  use 'akinsho/toggleterm.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'kyazdani42/nvim-web-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'majutsushi/tagbar'
  use 'ryanoasis/vim-devicons'
  use 'scrooloose/nerdcommenter'
  use 'mhinz/vim-signify'
  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-autopairs'
  use 'junegunn/vim-easy-align'
  use 'alvan/vim-closetag'
  use 'tpope/vim-abolish'
  use 'Yggdroot/indentLine'
  use 'chrisbra/Colorizer'
  use 'KabbAmine/vCoolor.vim'
  use {
    'heavenshell/vim-pydocstring',
    run = 'make install'
  }
  use 'vim-scripts/loremipsum'
  use 'metakirby5/codi.vim'
  use 'dkarter/bullets.vim'
  use 'psliwka/vim-smoothie'
  use 'antoinemadec/FixCursorHold.nvim'
  use 'djoshea/vim-autoread'
  use {
    "junegunn/fzf",
    dir = "~/.fzf",
    run = "./install --all"
  }
  use { "junegunn/fzf.vim" }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)