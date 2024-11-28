local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
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
    -- use {
    --   'norcalli/nvim-colorizer.lua',
    --   config = function()
    --     require 'colorizer'.setup()
    --   end
    -- }
    use {
        "loctvl842/monokai-pro.nvim",
        config = function()
            require("monokai-pro").setup()
        end
    }

    -- Functionalities

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('plugins._nvim-treesitter')
        end
    }
    use {
        'ray-x/go.nvim',
        requires = 'ray-x/guihua.lua',
        config = function()
            require('plugins._nvim-go')
        end
    }
    use 'christoomey/vim-tmux-navigator'
    use 'martinda/Jenkinsfile-vim-syntax'
    use 'nvim-lua/plenary.nvim'
    use 'NoahTheDuke/vim-just'
    use 'MunifTanjim/nui.nvim'
    use {
        'nvim-neo-tree/neo-tree.nvim',
        config = function()
            require('plugins._nvim-neo-tree')
        end
    }
    -- use {
    --   'folke/noice.nvim',
    --   config = function()
    --     require("noice").setup({
    --       lsp = {
    --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    --         override = {
    --           ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
    --           ["vim.lsp.util.stylize_markdown"] = true,
    --           ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    --         },
    --       },
    --       -- you can enable a preset for easier configuration
    --       presets = {
    --         bottom_search = true, -- use a classic bottom cmdline for search
    --         command_palette = true, -- position the cmdline and popupmenu together
    --         long_message_to_split = true, -- long messages will be sent to a split
    --         inc_rename = false, -- enables an input dialog for inc-rename.nvim
    --         lsp_doc_border = false, -- add a border to hover docs and signature help
    --       },
    --     })
    --   end
    -- }
    use {
        'akinsho/toggleterm.nvim',
        config = function()
            require('plugins._nvim-toggleterm')
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('plugins._nvim-telescope')
        end
    }
    use 'tpope/vim-fugitive'
    use "sindrets/diffview.nvim"
    use 'tpope/vim-sensible'
    use 'tpope/vim-surround'
    use {
        -- 'nvim-tree/nvim-web-devicons',
        'nvim-tree/nvim-web-devicons',
        config = function()
            require('plugins._nvim-web-devicons')
        end
    }
    use 'majutsushi/tagbar'
    use 'tpope/vim-commentary'
    use 'rcarriga/nvim-notify'
    use 'scrooloose/nerdcommenter'
    use 'mhinz/vim-signify'
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('plugins._nvim-autopairs')
        end
    }
    use 'junegunn/vim-easy-align'
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins._nvim-indent-blankline')
        end
    }
    use 'psliwka/vim-smoothie'
    use 'antoinemadec/FixCursorHold.nvim'
    use 'djoshea/vim-autoread'
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins._nvim-lspconfig')
        end
    }
    use 'echasnovski/mini.nvim'
    use {
        'echasnovski/mini.indentscope',
        config = function()
            require('plugins._mini-indentscope')
        end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require('plugins._nvim-cmp')
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('plugins._nvim-lualine')
        end
    }
    use { 'ojroques/nvim-bufdel' }
    -- use {
    --   'akinsho/bufferline.nvim',
    --   -- tag = "v2.*",
    --   requires = 'nvim-tree/nvim-web-devicons',
    --   config = function()
    --     require("plugins._nvim-bufferline")
    --   end
    -- }
    use { 'iamcco/markdown-preview.nvim' }
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate", -- :MasonUpdate updates registry contents
        config = function()
            require("mason").setup()
        end
    }
    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("plugins._nvim-projects")
        end
    }
    use({
        "epwalsh/obsidian.nvim",
        tag = "*", -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",

            -- see below for full list of optional dependencies 👇
        },
        config = function()
            require("obsidian").setup({
                workspaces = {
                    {
                        name = "main",
                        path = "~/Documents/Obsidian Vault",
                    },
                },
                follow_url_func = function(url)
                    -- Open the URL in the default web browser.
                    -- vim.fn.jobstart({"open", url})  -- Mac OS
                    vim.fn.jobstart({ "xdg-open", url }) -- linux
                end,
            })
        end,
    })
    use 'dhruvasagar/vim-table-mode'
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    -- Automatically set up configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end)
