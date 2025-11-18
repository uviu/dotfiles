-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory with oil" })

-- lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })

-- gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", { desc = "Preview Hunk Inline" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle inline line blame" })

-- basic clipboard shortcut
vim.api.nvim_set_keymap("i", "<C-v>", "<C-r>+", { desc = "Paste Code from register +" })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { desc = "Copy highlighted code" })

-- navigate nvim panes
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Go to upper pane" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Go to lower pane" })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Go to left pane" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Go to right pane" })

-- integrate tmux-navigator
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { desc = "Go to upper tmux-pane" })
vim.keymap.set("n", "<C-j>", ":TmuxNavigatDown<CR>", { desc = "Go to lower tmux-pane" })
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { desc = "Go to left tmux-pane" })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { desc = "Go to right tmux-pane" })

-- move
vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", { desc = "Move Line Up" })
vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", { desc = "Move Line Down" })
vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", { desc = "Move Block Up" })
vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", { desc = "Move Block Down" })

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })

--rename
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "Rename every Variableinstance"})

--conform
vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({
        lsp_format = "fallback",
    })
end, { desc = "Format current file" })
