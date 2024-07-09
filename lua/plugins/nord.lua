return {
   "shaunsingh/nord.nvim", 
   name = "nord", 
   priority = 1000, 
   lazy = false,
   config = function()
      vim.cmd.colorscheme "nord"
    end
}
