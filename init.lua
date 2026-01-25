local vim = vim
local opt = vim.opt

require("config.maps")
require("config.lazy")
require("config.settings")
require("config.helperkeymap")

print("Owllight Neovim Config using Lazy.nvim package manager")
print("Use command :HelpRemaps for info about the remaps")

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldlevelstart = 0
opt.foldnestmax = 2
