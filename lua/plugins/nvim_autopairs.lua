-- .config/nvim/lua/plugins/nvim_autopairs.lua

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({
			disable_filetype = { "TelescopePrompt", "vim" },
		})
	end,
}
