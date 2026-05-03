require "nvchad.options"

require('telescope').load_extension 'remote-sshfs'
local api = require('remote-sshfs.api')
vim.keymap.set('n', '<leader>rc', api.connect, {})
vim.keymap.set('n', '<leader>rd', api.disconnect, {})
vim.keymap.set('n', '<leader>re', api.edit, {})

local clipipe = require 'clipipe'
vim.g.clipboard = {
  name = "clipipe",
  copy = {
    ["+"] = function(lines) clipipe.copy(lines, '+') end,
    ["*"] = function(lines) clipipe.copy(lines, '*') end,
  },
  paste = {
    ["+"] = function() return clipipe.paste('+') end,
    ["*"] = function() return clipipe.paste('*') end,
  }
}
