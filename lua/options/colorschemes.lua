-- sonokai
vim.g.sonokai_style = "default"
vim.g.sonokai_better_performance = true

-- gruvbox-material
-- Available values: "hard", "medium"(default), "soft"
vim.g.gruvbox_material_background = "soft"
vim.g.gruvbox_material_better_performance = true
vim.g.gruvbox_material_transparent_background ="0"

-- material
--vim.g.material_style = "darker"

vim.g.sonokai_transparent_background = "0"

---- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_transparent = false


vim.cmd[[colorscheme tokyonight]]
