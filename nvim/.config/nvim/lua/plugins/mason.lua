return {
	-- mason
	{
		"williamboman/mason.nvim",
		opts = {},
	},

	-- mason toolinstaller
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- lsp servers
				"lua-language-server",
				"clangd",
				"gopls",

				-- formatters/linters
				"stylua",
			},
		},
	},
}
