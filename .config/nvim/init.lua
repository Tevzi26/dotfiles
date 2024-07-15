require("knez.core")
require("knez.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("LushwalCompile")
	end,
})
