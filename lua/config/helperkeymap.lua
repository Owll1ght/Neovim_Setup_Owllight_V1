local function helperkeymap()
  vim.notify("Key Maiping : leader key is ','")
  vim.notify("In Normal Mode : \n<leader>fj to open Ex, <leader>w to save, <leader>q to quit")
  vim.notify("<leader>o to open new window (vertical), <leader>p to to open new window (horizontal)")
  vim.notify("<C-h>,<C-j>,<C-k>,<C-l> to move between window inside neovim, using vim motions")
  vim.notify("<C-Left>,<C-Right>,<C-Up>,<C-Down> to resize the window")
  vim.notify("Neotree : <leader>nt toggle neotree, <leader>nf neotree focus")
  vim.notify("Autocomplete : <C-n> and <C-p> select next or previous item, <C-Space> to complete, <C-e> to confirm ")
  vim.notify("Telescope : <leader>ff to open telescope, <leader>fg to open grep (makesure ripgrep is installaed), <leader>fb to open telescope buffer")
end

vim.api.nvim_create_user_command("HelpRemaps", helperkeymap, {
  desc = "Give the detailed remaps in this configuration"
})
