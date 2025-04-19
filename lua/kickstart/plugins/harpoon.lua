return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon.setup {}

      -- INFO: <space>a adds file to the harpoon list
      -- <C-e will show the current harpoon list
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
        print 'File added to harpoon list.'
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(require('harpoon'):list())
      end)

      -- INFO: Iterate through the current selected files with jkl; respectively
      vim.keymap.set('n', '1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '3', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '4', function()
        harpoon:list():select(4)
      end)

      -- INFO: Remove item from harpoon list.
      vim.keymap.set('n', '<leader>r', function()
        harpoon:list():remove()
        print 'File removed from harpoon list.'
      end)
    end,
  },
}
