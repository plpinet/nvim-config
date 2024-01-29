-- sonokai
vim.g.sonokai_style = "maia"
vim.g.sonokai_better_performance = true
vim.g.sonokai_transparent_background = "1"

-- gruvbox-material
-- Available values: "hard", "medium"(default), "soft"
vim.g.gruvbox_material_background = "medium"
vim.g.gruvbox_material_better_performance = true
vim.g.gruvbox_material_transparent_background = "1"
-- Available values:   'material', 'mix', 'original'
vim.g.gruvbox_material_foreground = "mix"

-- gruvbox-baby
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_background_color = "medium"
vim.g.gruvbox_baby_keyword_style = "italic"
vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
vim.g.gruvbox_baby_telescope_theme = 0
vim.g.gruvbox_baby_transparent_mode = 1
local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {Normal = {fg = colors.milk}}

---- tokyonight
require("tokyonight").setup({
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = true, -- Enable this to disable setting the background color
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
})

-- catpuccin
require("catppuccin").setup({
    transparent_background = false,
})

-- kanagawa
require('kanagawa').setup({
    transparent = false,
})

vim.cmd[[colorscheme gruvbox-material]]
