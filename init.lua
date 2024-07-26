vim.cmd("set shiftwidth=2") 
vim.cmd("set tabstop=2") 
vim.cmd("set softtabstop=2") 
vim.cmd("set expandtab")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.cmd("set autoindent")

require("config.lazy");
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules" 
    }
  }
}
