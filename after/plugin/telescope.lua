local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fa", function()
	require("telescope").extensions.aerial.aerial()
end, {})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fr", function()
	vim.cmd(":lua vim.lsp.buf.format()")
end, {})

--split with telescope
vim.keymap.set("n", "<C-w><C-j>", function()
	vim.cmd("split")
	vim.cmd("wincmd j")
	builtin.find_files()
end)
vim.keymap.set("n", "<C-w><C-k>", function()
	vim.cmd("split")
	vim.cmd("wincmd k")
	builtin.find_files()
end)
vim.keymap.set("n", "<C-w><C-h>", function()
	vim.cmd("vsplit")
	vim.cmd("wincmd h")
	builtin.find_files()
end)
vim.keymap.set("n", "<C-w><C-l>", function()
	vim.cmd("vsplit")
	vim.cmd("wincmd l")
	builtin.find_files()
end)
