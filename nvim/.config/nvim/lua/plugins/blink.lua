return {
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  opts = {
    keymap = {
      preset = "super-tab",
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "show_signature", "hide_signature", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<C-d>"] = { "show_documentation", "hide_documentation", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      keyword = { range = "prefix" },
      trigger = { show_on_trigger_character = true },
      list = { selection = { preselect = true, auto_insert = true } },
      documentation = {
        auto_show = false,
        window = { border = "rounded" },
      },
      menu = {
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
            { "source_name" },
          },
          components = {
            kind_icon = {
              ellipsis = false,
              text = function(ctx)
                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                return kind_icon
              end,
              highlight = function(ctx)
                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                return hl
              end,
            },
          },
        },
      },
      ghost_text = { enabled = true },
    },
    signature = { enabled = true },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
