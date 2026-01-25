local vim = vim
local opt = vim.opt

require("config.maps")
require("config.lazy")
require("config.settings")
require("config.helperkeymap")

print("Owllight Neovim Config using Lazy.nvim package manager")
print("Use command :HelpRemaps for info about the remaps")

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 1
