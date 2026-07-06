return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local startify = require("alpha.themes.startify")
    require("alpha").setup(startify.config)
  end,
}
