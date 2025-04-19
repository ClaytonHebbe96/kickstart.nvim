return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
        adaptive_size = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    },
    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>'),
  },
}
