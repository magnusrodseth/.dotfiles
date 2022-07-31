vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.api.nvim_command("NvimTreeToggle")
    end
})
