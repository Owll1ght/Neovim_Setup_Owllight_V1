local vim = vim
local opt = vim.opt

vim.g.mapleader = ','

require("config.lazy")
require("config.settings")

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
