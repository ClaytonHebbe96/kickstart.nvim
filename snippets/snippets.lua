local ls = require 'luasnip'

-- NOTE: LuaSnip Shorthands
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

-- NOTE: Define snippets below
ls.add_snippets('all', {

  -- Example snippets showing very simple snippet formatting
  s('hi', { t 'Hello World!' }),
})

ls.add_snippets('html', {

  ls.parser.parse_snippet(
    'html',
    '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>Document Title</title></head><body><h1>Hello World!</h1></body></html>'
  ),
})
