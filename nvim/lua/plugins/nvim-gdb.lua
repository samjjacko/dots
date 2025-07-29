return {
	{
		"sakhnik/nvim-gdb",
		ft = {"c", "cpp"},
		keys = {
			{"<Leader>b", "<cmd>GdbBreakpointToggle<cr>"},
			{"<Leader>c", "<cmd>GdbContinue<cr>" }, 
			{"<Leader>n", "<cmd>GdbNext<cr>"},
			{"<F11>", "<cmd>GdbStep<cr>"},
		},
		config = function()
			vim.g.nvim_gdb_debugger = "lldb"
			vim.g.nvim_gdb_init_commands = {
				"set breakpoint pending on",
				"set confirm off",
			}
		end,
	},
}
