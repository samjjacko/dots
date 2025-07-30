return {
	"samjjacko/substrata.nvim",
	name = "samsubstrata",
	lazy = false, 
	priority = 1000,
	config = function()
		vim.g.substrata_transparent = true
		vim.cmd("colorscheme substrata")
	end
}
