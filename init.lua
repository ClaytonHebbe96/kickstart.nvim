-- NOTE: Init.lua
-- This file is where our nvim configuration starts from.

-- Set <space> as the leader key
-- See `:help mapleader`
-- Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- This file includes all of the configuration requirements.

-- [[ Install 'lazy.nvim' plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- [[ Setting Options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Basic Auto Commands ]]
require 'autocmds'

-- [[ Import custom LuaSnip Snippets ]]
require('luasnip.loaders.from_lua').load {
  paths = { '~/.config/nvim/snippets/' },
}

-- The line beneath this is called 'modeline'. See ':help modeline'
-- vim: ts=2 sts=2 sw=2 et
