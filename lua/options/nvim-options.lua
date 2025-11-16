vim.cmd 'set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent'
vim.cmd 'set mouse=a'
vim.cmd 'set clipboard=unnamedplus'
vim.cmd 'set incsearch ignorecase smartcase hlsearch'
vim.cmd 'set wildmode=longest,list,full wildmenu'
vim.cmd 'set ruler laststatus=2 showcmd showmode'
vim.cmd 'set wrap breakindent'
vim.cmd 'set encoding=utf-8'
vim.cmd 'set textwidth=0'
vim.cmd 'set hidden'
vim.cmd 'set number relativenumber'
vim.cmd 'set title'
vim.cmd 'set completeopt=menu,menuone,noselect'
vim.cmd 'set conceallevel=0'
vim.cmd 'set cursorline'
vim.cmd 'set splitbelow'
vim.cmd 'set splitright'
vim.cmd('filetype plugin indent on')
-- vim.cmd 'set cc=80'

vim.o.guifont = "JetBrainsMono Nerd Font:h12"
vim.opt.termguicolors = true
vim.wo.fillchars='eob: '

vim.g.tagbar_width = 30

vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_guifg = 'gray'

vim.opt.listchars = {
  space = ' ',
  nbsp = '␣',  -- This highlights non-breaking spaces
  tab = '→ ',
  trail = '•',
}
vim.opt.list = true

vim.cmd([[
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction
]])

-- autocommands
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.jenkins", "*.jenkinsfile", "*.Jenkinsfile", "Jenkinsfile", "jenkinsfile"},
  callback = function()
    vim.bo.filetype = "groovy"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "groovy",
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = "*.tfvars",
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "terraform",
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"Tiltfile", "*.tiltfile"},
  callback = function()
    vim.bo.filetype = "starlark"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "starlark",
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 8
    vim.bo.softtabstop = 8
    vim.bo.shiftwidth = 8
  end,
})
