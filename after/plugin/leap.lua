require('leap').opts.safe_labels = {}
vim.keymap.set({ 'n', 'x', 'o' }, 'f', '<Plug>(leap-forward)')
vim.keymap.set({ 'n', 'x', 'o' }, 'F', '<Plug>(leap-backward)')
vim.keymap.set({ 'n', 'x', 'o' }, 't', '<Plug>(leap-forward-till)')
vim.keymap.set({ 'n', 'x', 'o' }, 'T', '<Plug>(leap-backward-till)')
vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    local bg = vim.api.nvim_get_hl(0, { name = 'LeapLabelSecondary' }).bg
    vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { fg = bg, bg = bg, })
  end
})
