return {
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
