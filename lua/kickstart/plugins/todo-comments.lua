-- Highlight todo, notes, etc in comments
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = true,
    keywords = {
      TODO = { icon = '', color = 'info', alt = { 'DOING' } },
      DONE = { icon = '', color = 'info', alt = { 'COMPLETED' } },
      NOTE = { icon = '' },
    },
    highlight = {
      multiline = true,
      multiline_pattern = '.',
      before = '',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et

--  FIX:
--  FIXME:
--  BUG:
--  FIXIT:
--  ISSUE:
--  TODO:
--  DOING:
--  DONE:
--  COMPLETED:
--  HACK:
--  WARN:
--  WARNING:
--  XXX:
--  PERF:
--  OPTIM:
--  PERFORMANCE:
--  OPTIMIZE:
--  NOTE:
--  INFO:
--  TEST:
--  TESTING:
--  PASSED:
--  FAILED:
