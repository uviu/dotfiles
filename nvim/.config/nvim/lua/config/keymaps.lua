-- Keymaps
vim.keymap.set("n", "gh", function()
  -- toggle: close any open float, or open hover
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative ~= "" then
      vim.api.nvim_win_close(win, false)
      return
    end
  end
  vim.schedule(vim.lsp.buf.hover)
end, { desc = "Hover documentation" })
