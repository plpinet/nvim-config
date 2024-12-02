return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require "telescope.actions"
    require("telescope").setup {
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = { width = 0.90 }
        },
        -- borderchars = {
        --   prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
        --   results = { " " },
        --   preview = { " " },
        -- }
      },
      pickers = {
        buffers = {
          mappings = {
            n = {
              ["<C-w>"] = actions.delete_buffer
            },
            i = {
              ["<C-w>"] = actions.delete_buffer
            }
          }
        },
        --find_files = {
          --find_command = { "rg", "--ignore", "-L", "--hidden", "--files" },
        --}
      }
    }
  end
}
