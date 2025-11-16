return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        columns = { "icon", "size", "mtime" },
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = {
        { "nvim-mini/mini.icons", opts = {} },
    },
    lazy = false,
}
