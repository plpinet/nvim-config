return {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup {
        size = function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<C-t>]],
        hide_numbers = true, -- hide the number column in toggleterm buffers
        shade_filetypes = {},
        shade_terminals = false,
        shading_factor = '3', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        persist_size = true,
        direction = 'float', -- | 'vertical' | 'window' | 'float'
        close_on_exit = true, -- close the terminal window when the process exits
        shell = vim.o.shell, -- change the default shell
        -- This field is only relevant if direction is set to 'float'
        float_opts = {
          -- The border key is *almost* the same as 'nvim_open_win'
          -- see :h nvim_open_win for details on borders however
          -- the 'curved' border is a custom border type
          -- not natively supported but implemented in this plugin.
          border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
          go_back = 0, --By default focus is returned to the original window after executing the command. Set to zero to disable this behavior
          width = 170,
          height = 45,
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          }
        }
      }

      local Terminal  = require('toggleterm.terminal').Terminal

      -- lazygit
      local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, dir = '.' })

      function _lazygit_toggle()
        lazygit:toggle()
      end

      function _G.set_terminal_keymaps()
        local opts = {buffer = 0}
        vim.keymap.set('t', '<C-q>', [[<C-\><C-n>]], opts)
        -- vim.keymap.set('t', '<C-wh>', [[<Cmd>wincmd h<CR>]], opts)
        -- vim.keymap.set('t', '<C-wj>', [[<Cmd>wincmd j<CR>]], opts)
        -- vim.keymap.set('t', '<C-wk>', [[<Cmd>wincmd k<CR>]], opts)
        -- vim.keymap.set('t', '<C-wl>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
      end
      vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

      vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
          end
}
