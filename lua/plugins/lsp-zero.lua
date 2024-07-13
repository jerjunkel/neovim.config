return {
  {'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","tsserver"}
      });
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
        end)
      local lspconfig = require("lspconfig");
      lspconfig.lua_ls.setup({});
      lspconfig.tsserver.setup({});
    end
  },

  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
}

