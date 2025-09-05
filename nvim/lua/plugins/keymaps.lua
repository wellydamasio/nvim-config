-- Telescope Keymaps
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- Nvim Tree Keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- Nvim-Comment Keymaps
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")
