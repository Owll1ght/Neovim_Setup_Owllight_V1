local vim = vim
local opt = vim.opt

require("config.lazy")
require("config.settings")

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
