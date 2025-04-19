return {
  {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    build = 'make install_jsregexp',
    config = function()
      local ls = require 'luasnip'
      local types = require 'luasnip.util.types'
      require 'luasnip.util.ext_opts'

      ls.config.set_config {
        -- This tells luasnip to remember to keep around the last snippet.
        -- You can jump back into it even if you move outside the selection.
        history = true,

        -- This one is cool because if you have dynamic snippets, it updates as you type.
        updateevents = 'TextChanged,TextChangedI',

        -- Autosnippets
        enable_autosnippets = true,

        -- Crazy Highlights
        -- ext_opts = nil,
        ext_opts = {
          [types.choiceNode] = {
            active = {
              virt_text = { { '<-', 'Error' } },
            },
          },
        },
      }
      -- NOTE: Luasnip keymappings.

      -- <C-k> will be our expansion key
      vim.keymap.set({ 'i', 's' }, '<C-k>', function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end, { desc = 'Luasnip snippet expansion' })

      -- <C-j> will allow us to jump backwards in a snippet if possible.
      vim.keymap.set({ 'i', 's' }, '<C-j>', function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { desc = 'Jump backwards in snippet' })

      -- <C-l> is selecting within a list of options.
      -- this is useful for choice nodes
      vim.keymap.set({ 'i', 's' }, '<C-l>', function()
        if ls.choice_active() then
          ls.change_choice()
        end
      end, { desc = 'Iterate through snippet options' })

      -- Re-source luasnip file without having to quit nvim to reload new snippets.
      vim.keymap.set('n', '<leader>ls', ':source ~/.config/nvim/lua/kickstart/plugins/luasnip.lua<CR>', { desc = 'Source luasnip.lua' })
    end,
  },
}
