-- .config/nvim/lua/plugins/formatter.lua

return {
	"stevearc/conform.nvim",
	opts = {},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		-- Make sure black is installed in system (pip install black)
		-- Make sure isort is installed in system (pip install isort)
		-- Make sure prettier is installed in system (npm install --save-dev --save-exact prettier)
		-- Make sure stylua is installed in system (pip install git+https://github.com/johnnymorganz/stylua)

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				tyepscript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				c = { "astyle" },
				cpp = { "astyle" },
				cs = { "astyle" },
				cxx = { "astyle" },
				cc = { "astyle" },
				objective_c = { "astyle" },
				java = { "astyle" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fo", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in viusal mode)" })
	end,
}
