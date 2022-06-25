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

vim.o.termguicolors = true

-- autocommands
vim.cmd([[
  augroup set_jenkins_groovy
  au!
  au BufNewFile,BufRead *.jenkins,*.jenkinsfile,*.Jenkinsfile,Jenkinsfile,jenkinsfile setf groovy
  augroup END
]])
