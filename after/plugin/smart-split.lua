local smart_split = require("smart-splits")
smart_split.setup()
-- moving between splits
vim.keymap.set("n", "<C-h>", smart_split.move_cursor_left)
vim.keymap.set("n", "<C-j>", smart_split.move_cursor_down)
vim.keymap.set("n", "<C-k>", smart_split.move_cursor_up)
vim.keymap.set("n", "<C-l>", smart_split.move_cursor_right)

--change split size
vim.keymap.set("n", "<A-h>", function()
  smart_split.resize_left(1)
end)
vim.keymap.set("n", "<A-j>", function()
  smart_split.resize_down(1)
end)
vim.keymap.set("n", "<A-k>", function()
  smart_split.resize_up(1)
end)
vim.keymap.set("n", "<A-l>", function()
  smart_split.resize_right(1)
end)

vim.keymap.set("n", "<A-\\>", function()
  vim.cmd("vertical wincmd =")
end)
vim.keymap.set("n", "<A-->", function()
  vim.cmd("horizontal wincmd =")
end)

-- swapping buffers between windows
vim.keymap.set("n", "<leader><leader>h", smart_split.swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", smart_split.swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", smart_split.swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", smart_split.swap_buf_right)
