return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      width = 120,
      options = {
        signcolumn = "no",
        number = false,
        relativenumber = false,
        cursorline = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        laststatus = 0,
      },
      twilight = { enabled = false },
      gitsigns = { enabled = false },
    },
  },
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen mode" },
  },
}
