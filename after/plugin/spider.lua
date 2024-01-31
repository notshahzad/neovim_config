vim.keymap.set(
  { "n", "o", "x" },
  "<C-q>",
  "<cmd>lua require('spider').motion('w')<CR>",
  { desc = "Spider-w" }
)
vim.keymap.set(
  { "n", "o", "x" },
  "<C-s>",
  "<cmd>lua require('spider').motion('b')<CR>",
  { desc = "Spider-b" }
)
