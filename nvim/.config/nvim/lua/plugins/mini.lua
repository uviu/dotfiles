return {
  {
    "echasnovski/mini.move",
    version = false,
    event = "VeryLazy",
    opts = {
      mappings = {
        down = "<M-j>",
        up = "<M-k>",
        left = "",
        right = "",
        line_down = "<M-j>",
        line_up = "<M-k>",
        line_left = "",
        line_right = "",
      },
    },
  },
  {
    "echasnovski/mini.pairs",
    version = false,
    event = "InsertEnter",
    opts = {},
  },
  {
    "echasnovski/mini.surround",
    version = false,
    keys = { "sa", "sd", "sr", "sf", "sF", "sh", "sn" },
    opts = {
      mappings = {
        add = "sa",            -- Add surrounding (visual: sa, normal: sa<motion>)
        delete = "sd",         -- Delete surrounding
        replace = "sr",        -- Replace surrounding
        find = "sf",           -- Find surrounding (right)
        find_left = "sF",      -- Find surrounding (left)
        highlight = "sh",      -- Highlight surrounding
        update_n_lines = "sn", -- Update n_lines
      },
    },
  },
}
