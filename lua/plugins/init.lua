return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  'marko-cerovac/material.nvim',
  'sainnhe/sonokai',
  'sainnhe/gruvbox-material',
  'luisiacc/gruvbox-baby',
  'folke/tokyonight.nvim',
  'bryanmylee/vim-colorscheme-icons',
  'arcticicestudio/nord-vim',
  'junegunn/limelight.vim',
  'rhysd/vim-color-spring-night',
  'ayu-theme/ayu-vim',
  'drewtempelmeyer/palenight.vim',
  'nanotech/jellybeans.vim',
  'cocopon/iceberg.vim',
  'yunlingz/ci_dark',
  'olimorris/onedarkpro.nvim',
  'towolf/vim-helm',
  'rebelot/kanagawa.nvim',
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup()
    end
  },
  { "catppuccin/nvim", as = "catppuccin" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { 'sainnhe/gruvbox-material', lazy = false, priority = 1000, },
  { "folke/snacks.nvim" },

  -- 'christoomey/vim-tmux-navigator',
  'martinda/Jenkinsfile-vim-syntax',
  'nvim-lua/plenary.nvim',
  'NoahTheDuke/vim-just',
  'MunifTanjim/nui.nvim',
  'tpope/vim-fugitive',
  'sindrets/diffview.nvim',
  'tpope/vim-sensible',
  'tpope/vim-surround',
  'nvim-tree/nvim-web-devicons',
  'majutsushi/tagbar',
  'tpope/vim-commentary',
  'rcarriga/nvim-notify',
  'scrooloose/nerdcommenter',
  'mhinz/vim-signify',
  'windwp/nvim-autopairs',
  'junegunn/vim-easy-align',
  'psliwka/vim-smoothie',
  'djoshea/vim-autoread',
  'echasnovski/mini.nvim',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'ojroques/nvim-bufdel',
  -- 'iamcco/markdown-preview.nvim',
  'dhruvasagar/vim-table-mode',
  'kdheepak/lazygit.nvim',
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
  }
}
