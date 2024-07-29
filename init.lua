vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set expandtab")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set autoindent")

vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

require("config.lazy")
require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
		},
	},
})
