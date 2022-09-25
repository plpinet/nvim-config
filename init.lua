-- plugins (packer)
require('plugins')

-- colorschemes options
require('options.colorschemes')

-- neovim options
require('options.nvim-options')

-- plugins custom configurations
require('plugins._nvim-autopairs')
require('plugins._nvim-lspconfig')
require('plugins._nvim-treesitter')
require('plugins._nvim-toggleterm')
require('plugins._nvim-cmp')
require('plugins._nvim-web-devicons')
require('plugins._nvim-lualine')
require('plugins._nvim-neo-tree')
require('plugins._nvim-indent-blankline')
require('plugins._nvim-telescope')
--require('plugins._nvim-pasta')
require("bufferline").setup{}

-- mappings
require('mappings')
