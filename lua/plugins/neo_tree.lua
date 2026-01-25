-- .config/nvim/lua/plugins/neo_tree.lua

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- Optional, but recommended
      "antosha417/nvim-lsp-file-operations",
      "folke/snacks.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    use_snacks_image = false,
  }
}
