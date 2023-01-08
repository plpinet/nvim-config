-- leader key
vim.g.mapleader = ","

-- love 'jj' in insert mode as an escape key, but feel free to use whatever (or just press Esc)
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- tagbar
vim.api.nvim_set_keymap('n', '<leader>w', ':TagbarToggle<cr>', { noremap = true, silent = true })

-- neotree
vim.api.nvim_set_keymap('n', '<leader>ee', ':Neotree source=filesystem reveal=true position=left<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':Neotree float reveal=true<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bb', ':Neotree toggle show buffers right<cr>', { noremap = true, silent = true })

-- telescope
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rg', ':Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':Telescope buffers sort_mru=true ignore_current_buffer=true<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ':Telescope help_tags<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':Telescope current_buffer_fuzzy_find<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ec', ':Telescope colorscheme<cr>', { noremap = true, silent = true })

-- easyalign
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(EasyAlign)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>a', '<Plug>(EasyAlign)', { noremap = true, silent = true })

-- tabs
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<cr>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>bd', ':BufDel<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bn', ':enew<cr>', { noremap = true, silent = true })

-- splits
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rj', ':resize -5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rk', ':resize +5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rl', ':vertical resize +5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rh', ':vertical resize -5<cr>', { noremap = true, silent = true })

-- TrimWhitespace
vim.api.nvim_set_keymap('n', '<leader>t', ':call TrimWhitespace()<cr>', { noremap = true, silent = true })

-- lazygit
vim.api.nvim_set_keymap('n', '<leader>G', ':lua _lazygit_toggle()<cr>', { noremap = true, silent = true })

-- limelight
vim.api.nvim_set_keymap('n', '<leader>l', ':Limelight!!<cr>', { noremap = true, silent = true })

-- clear search
vim.api.nvim_set_keymap('n', '<leader><leader>', ':noh<cr>', { noremap = true, silent = true })

-- set current buffer directory as working directory
vim.api.nvim_set_keymap('n', '<leader>C', ':cd %:p:h<CR>', { noremap = true, silent = false })

-- paste register 0
vim.api.nvim_set_keymap('n', '<leader>p', '"0p', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>P', '"0P', { noremap = true, silent = false })
vim.api.nvim_set_keymap('v', '<leader>p', '"0p', { noremap = true, silent = false })

-- center half page movements
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
