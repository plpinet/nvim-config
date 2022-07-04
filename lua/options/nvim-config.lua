vim.cmd 'set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent'
vim.cmd 'set mouse=a'
vim.cmd 'set clipboard=unnamedplus'
vim.cmd 'set incsearch ignorecase smartcase hlsearch'
vim.cmd 'set wildmode=longest,list,full wildmenu'
vim.cmd 'set ruler laststatus=2 showcmd showmode'
vim.cmd 'set list listchars=trail:»,tab:»-'
vim.cmd 'set wrap breakindent'
vim.cmd 'set encoding=utf-8'
vim.cmd 'set textwidth=0'
vim.cmd 'set hidden'
vim.cmd 'set number relativenumber'
vim.cmd 'set nu rnu'
vim.cmd 'set title'
vim.cmd 'set completeopt=menu,menuone,noselect'
vim.cmd 'set cursorline'
vim.cmd 'set cc=80'
vim.cmd 'set splitbelow'
vim.cmd 'set splitright'
vim.cmd('filetype plugin indent on')

vim.opt.termguicolors = true
vim.wo.fillchars='eob: '

vim.g.tagbar_width = 30

vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_guifg = 'gray'

vim.cmd([[
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction
]])

-- autocommands
vim.cmd([[
  augroup set_jenkins_groovy
  au!
  au BufNewFile,BufRead *.jenkins,*.jenkinsfile,*.Jenkinsfile,Jenkinsfile,jenkinsfile setf groovy
  augroup END
]])
