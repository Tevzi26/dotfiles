return {
  "oncomouse/lushwal.nvim",
	cmd = { "LushwalCompile" },
	dependencies = {
		{ "rktjmp/lush.nvim" },
		{ "rktjmp/shipwright.nvim" },
	},
  config = function()
    vim.cmd("colorscheme lushwal")
  end
}

