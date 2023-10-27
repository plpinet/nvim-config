local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  -- Aesthetics

  use 'marko-cerovac/material.nvim'
  use 'sainnhe/sonokai'
  use 'sainnhe/gruvbox-material'
  use 'luisiacc/gruvbox-baby'
  use 'folke/tokyonight.nvim'
  use 'bryanmylee/vim-colorscheme-icons'
  use 'arcticicestudio/nord-vim'
  use 'junegunn/limelight.vim'
  use 'rhysd/vim-color-spring-night'
  use 'ayu-theme/ayu-vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'nanotech/jellybeans.vim'
  use 'cocopon/iceberg.vim'
  use 'yunlingz/ci_dark'
  use 'olimorris/onedarkpro.nvim'
  use 'towolf/vim-helm'
  use 'rebelot/kanagawa.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'xiantang/darcula-dark.nvim'

  -- Functionalities

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'christoomey/vim-tmux-navigator'
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
  use 'majutsushi/tagbar'
  use 'tpope/vim-commentary'
  use 'scrooloose/nerdcommenter'
  use 'mhinz/vim-signify'
  use 'windwp/nvim-autopairs'
  use 'junegunn/vim-easy-align'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'psliwka/vim-smoothie'
  use 'antoinemadec/FixCursorHold.nvim'
  use 'djoshea/vim-autoread'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'ahmedkhalf/project.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {'ojroques/nvim-bufdel'}
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {'iamcco/markdown-preview.nvim'}
  use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  -- Automatically set up configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
