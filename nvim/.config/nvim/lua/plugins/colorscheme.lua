return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      functions = {},
      variables = {},
      sidebars = "transparent",
      floats = "dark",
    },
    on_highlights = function(hl, _)
      hl.DiagnosticUnderlineError = { undercurl = true }
      hl.DiagnosticUnderlineWarn = { undercurl = true }
      hl.DiagnosticUnderlineHint = { undercurl = true }
      hl.DiagnosticUnderlineInfo = { undercurl = true }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
