return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "saghen/blink.cmp",
    },
    config = function()
      local lspconfig = require("lspconfig")

      require("mason").setup()

      -- Diagnostic config
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
      })

      -- Hover handler with visible border
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
        max_width = 80,
      })

      -- Default capabilities with blink.cmp
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "svelte",
          "rust_analyzer",
        },
        automatic_installation = true,
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
            })
          end,
          ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
              capabilities = capabilities,
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim", "Snacks" },
                  },
                  workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                  },
                },
              },
            })
          end,
        },
      })

      -- LSP keymaps
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
          end

          map("gd", function() Snacks.picker.lsp_definitions({ include_current = true }) end, "Go to definition")
          map("gr", function() Snacks.picker.lsp_references() end, "Show references")
          map("gI", function() Snacks.picker.lsp_implementations() end, "Go to implementation")
          map("gy", function() Snacks.picker.lsp_type_definitions() end, "Go to type definition")
          -- K is auto-mapped by nvim 0.11 LSP defaults
          map("<leader>fs", function() Snacks.picker.lsp_symbols() end, "Document symbols")
          map("<leader>fS", function() Snacks.picker.lsp_workspace_symbols() end, "Workspace symbols")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
          map("<leader>d", vim.diagnostic.open_float, "Show diagnostic")
          map("[d", vim.diagnostic.goto_prev, "Previous diagnostic")
          map("]d", vim.diagnostic.goto_next, "Next diagnostic")

          -- Format on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, async = false })
            end,
          })
        end,
      })
    end,
  },
}
