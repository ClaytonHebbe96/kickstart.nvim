return {
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    opts = {
      vim.keymap.set('n', '<leader>lo', ':LivePreview start<CR>'),
      vim.keymap.set('n', '<leader>lc', ':LivePreview close<CR>'),
      vim.keymap.set('n', '<leader>p', ':LivePreview pick<CR>'),
    },
  },
}
