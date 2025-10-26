-- blink
return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "*",
	opts = {
		keymap = {
			preset = "super-tab",
			-- Select completions
			["<C-p>"] = { "select_prev", "fallback" },
			["<C-n>"] = { "select_next", "fallback" },
			-- Scroll documentation
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
			-- Show/hide signature
			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		completion = {
			keyword = { range = "prefix" },
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			trigger = { show_on_trigger_character = true },
			documentation = {
				auto_show = true,
			},
		},
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
