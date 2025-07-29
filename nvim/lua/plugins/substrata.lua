return {
	"kvrohit/substrata.nvim",
	lazy = false, 
	config = function()
		vim.g.substrata_transparent = true
		vim.cmd("colorscheme substrata")
	end,
}
