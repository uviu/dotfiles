return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = { enabled = true },
  },
  keys = {
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Search in project" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Open buffers" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Help pages" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent files" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Nvim config files" },
    { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "Search word under cursor" },
    { "<leader>/", function() Snacks.picker.lines() end, desc = "Search in buffer" },
  },
}
