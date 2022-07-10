local settings = {
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
            "bing bong"
        },
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { "> Project View", "NvimTreeToggle", "<leader>pv" },
            { "> Find File", "Telescope find_files", "<leader>ff" },
            { "> Find Word (grep)", "Telescope live_grep", "<leader>fg" },
            { "> Lazygit (Git UI)", "LazyGit", "<leader>gitui" },
            { "> Command Palette", "Telescope commands", "<leader>cp" },
            { "> Recent Files", "Telescope oldfiles", "<leader>of" },
            { "> New File", "lua require'startup'.new_file()", "<leader>nf" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", },
}

return settings
