local actions = require "telescope.actions"
require("telescope").setup {
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
    }
  }
}
