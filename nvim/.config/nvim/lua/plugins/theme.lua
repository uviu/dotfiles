--nord
return {
    "H4ckint0sh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("nord")
    end,
}

-- catppuccin
-- return {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    priority = 1000
-- }
