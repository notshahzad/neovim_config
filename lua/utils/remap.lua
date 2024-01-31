vim.g.mapleader = " "
-- not a beta enough to use move command
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--middle search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--paste without loosing shit
vim.keymap.set("x", "<leader>p", [["_dP]])

--yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--delete to void
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--copen shit
vim.keymap.set("n", "<C-S-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-S-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gq", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
vim.keymap.set(
  "n",
  "<leader>gi",
  "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
  { noremap = true }
)
