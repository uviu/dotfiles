return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "Find" },
      { "<leader>c", group = "Code" },
      { "<leader>r", group = "Rename" },
      { "<leader>a", group = "AI" },
      { "<leader>g", group = "Git" },
      { "<leader>h", group = "Git hunk" },
      -- LSP (buffer-local, registered here so which-key shows them)
      { "gd", desc = "Go to definition" },
      { "gr", desc = "Show references" },
      { "gI", desc = "Go to implementation" },
      { "gy", desc = "Go to type definition" },
      { "gh", desc = "Hover documentation" },
      { "<leader>fs", desc = "Document symbols" },
      { "<leader>fS", desc = "Workspace symbols" },
      { "<leader>ca", desc = "Code action" },
      { "<leader>rn", desc = "Rename symbol" },
      { "<leader>d", desc = "Show diagnostic" },
      { "[d", desc = "Previous diagnostic" },
      { "]d", desc = "Next diagnostic" },
    },
  },
}
