local actions = require "telescope.actions"
require("telescope").setup {
  defaults = {
    layout_strategy = 'vertical',
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
          ["<C-r>"] = actions.delete_buffer
        },
        i = {
          ["<C-r>"] = actions.delete_buffer
        }
      }
    },
    --find_files = {
      --find_command = { "rg", "--ignore", "-L", "--hidden", "--files" },
    --}
  }
}
