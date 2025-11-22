return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                window = {
                    position = "left",
                    width = 45,
                    mapping_options = {
                        noremap = true,
                        nowait = true,
                    },
                    mappings = {
                        ["<space>"] = {
                            "toggle_node",
                            nowait = false,
                        },
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["<C-x>"] = "open_split",
                        ["<C-v>"] = "open_vsplit",
                        ["t"] = "open_tabnew",
                        ["w"] = "open_with_window_picker",
                        ["C"] = "close_node",
                        ["a"] = {
                            "add",
                            -- some commands may take optional config options, see `:h neo-tree-mappings` for details
                            config = {
                                show_path = "none"
                            }
                        },
                        ["A"] = "add_directory",
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["y"] = "copy_to_clipboard",
                        ["x"] = "cut_to_clipboard",
                        ["p"] = "paste_from_clipboard",
                        ["c"] = "copy",
                        ["m"] = "move",
                        ["q"] = "close_window",
                        ["R"] = "refresh",
                        ["?"] = "show_help",
                    }
                },
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = true,
                        hide_hidden = true,
                        hide_by_name = {},
                        hide_by_pattern = {},
                        never_show = {},
                    },
                    follow_current_file = {
                        enabled = true
                    },
                    group_empty_dirs = false,
                    hijack_netrw_behavior = "open_default",
                    use_libuv_file_watcher = false,
                    window = {
                        mappings = {
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["H"] = "toggle_hidden",
                            ["/"] = "fuzzy_finder",
                            ["f"] = "filter_on_submit",
                            ["<c-x>"] = "clear_filter",
                            ["[g"] = "prev_git_modified",
                            ["]g"] = "next_git_modified",
                        }
                    }
                },
            })
        end
    }
}
