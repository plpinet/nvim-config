return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "bash", "lua", "rust", "cmake", "comment", "cpp", "css",
                             "dockerfile", "go", "graphql", "html", "http", "java",
                             "javascript", "json", "json5", "make", "markdown",
                             "markdown_inline", "perl", "php", "python", "regex",
                             "ruby", "vim", "vimdoc", "yaml", "typescript",
                             "terraform", "hcl", "starlark"
                           },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
    },
}
