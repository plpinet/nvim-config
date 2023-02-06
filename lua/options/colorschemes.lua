-- sonokai
vim.g.sonokai_style = "default"
vim.g.sonokai_better_performance = true
vim.g.sonokai_transparent_background = "0"

-- gruvbox-material
-- Available values: "hard", "medium"(default), "soft"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_better_performance = true
vim.g.gruvbox_material_transparent_background ="0"
-- Available values:   'material', 'mix', 'original'
vim.g.gruvbox_material_foreground = "mix"

-- gruvbox-baby
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_background_color = "medium"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
vim.g.gruvbox_baby_telescope_theme = 0
vim.g.gruvbox_baby_transparent_mode = 0
local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {Normal = {fg = colors.milk}}

---- tokyonight
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_transparent = false


vim.cmd[[colorscheme gruvbox-material]]
