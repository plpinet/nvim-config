require("bufferline").setup{
    options = {
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        }
    }
}
