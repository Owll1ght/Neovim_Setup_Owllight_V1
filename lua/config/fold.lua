local vim = vim
local opt = vim.opt

function custom_fold_text()
	local start_line_num = vim.v.foldstart
	local end_line_num = vim.v.foldend
	local line_count = end_line_num - start_line_num + 1

	local first_line_text = vim.fn.getline(start_line_num)

	local fold_text = string.format("%s >>>>> %d lines --------------------------------", first_line_text, line_count)

	return fold_text
end

vim.api.nvim_set_hl(0, 'Folded', {fg = '#AC9362', --[[bg = '#24283B',]] italic = true, bold = true})

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldlevelstart = 0
opt.foldnestmax = 2
opt.foldcolumn = "0"

local check = custom_fold_text()

if check ~= nil or check ~= false then
	opt.foldtext = "v:lua.custom_fold_text()"
else
	opt.foldtext = " "
end

-- opt.foldtext = " "
-- opt.foldtext = "v:lua.custom_fold_text()"

opt.fillchars = { fold = " " }
