require("config.lazy")
vim.opt.signcolumn = "yes"
vim.fn.sign_define('GdbBreakpoint', {text = "B", texthl = 'Error', linehl = '', numhl = ''})
vim.o.clipboard = "unnamedplus"
