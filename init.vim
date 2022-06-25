lua << EOF

-- plugins
require('plugins')

-- plugins configuration
require('_nvim-lspconfig')
require('_nvim-autopairs')
require('_nvim-treesitter')
require('_nvim-toggleterm')
require('_nvim-cmp')
require('_nvim-web-devicons')

-- neovim options
require('options')

EOF

filetype plugin indent on

" Main Coloring Configurations
syntax on
set termguicolors

" color tokyonight
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" color onedark
let g:onedark_config = {
  \ 'style': 'darker',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }

" sonokai
let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1

" gruvbox
let g:gruvbox_undercurl = 1
let g:gruvbox_contrast_dark = 'hard'

" gruvbox-material
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_better_performance = 1

" Load the colorscheme
colorscheme tokyonight

""" Plugin Configurations

" Airline
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop = 0
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1 " Uncomment to display buffer tabline above
let g:airline#extensions#tabline#formatter = 'short_path'

" vim-pydocstring
let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_defaultGroup = 'NonText'
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" TagBar
let g:tagbar_width = 30

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'gray'

" signify
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

let g:airline_theme='tomorrow'

""" Custom Mappings

let mapleader=","
nmap <leader>w :TagbarToggle<CR>

" Neotree
nnoremap <leader>ee :Neotree source=filesystem reveal=true position=left<cr>
nnoremap <leader>o :Neotree float reveal_force_cwd<cr>
nnoremap <leader>bb :Neotree toggle show buffers right<cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>g <cmd>Telescope current_buffer_fuzzy_find<cr>

nmap <leader>ec :Colors<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>rr :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>G :lua _lazygit_toggle()<CR>
nmap <leader>p <Plug>(pydocstring)
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>d :BLines<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :enew<CR>
nmap <S-Tab> :bprevious<CR>

" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize splits
nmap <leader>rj :resize -5<CR>
nmap <leader>rk :resize =5<CR>
nmap <leader>rl :vertical resize +5<CR>
nmap <leader>rh :vertical resize -5<CR>
