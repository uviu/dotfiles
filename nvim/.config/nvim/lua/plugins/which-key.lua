return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "Find" },
      { "<leader>c", group = "Code" },
      { "<leader>r", group = "Rename" },
      { "<leader>a", group = "AI" },
      { "<leader>h", group = "Git hunk" },
    },
  },
}
