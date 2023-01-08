-- nvim-treesitter

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "lua", "rust", "cmake", "comment", "cpp", "css",
                       "dockerfile", "go", "graphql", "html", "http",
                       "java", "javascript", "json", "json5", "make", "markdown",
                       "perl", "php", "python", "regex", "ruby", "vim", "yaml",
                       "typescript", "terraform", "hcl"
                     },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
