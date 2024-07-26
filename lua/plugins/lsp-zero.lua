return {
  {'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","tsserver", "cssls"}
      });
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
        end)
      lsp_zero.format_on_save({
          format_opts = {
            async = false,
            timeout_ms = 10000,
          },
          servers = {
            ['tsserver'] = {'javascript', 'typescript'},
          }
        })
      local lspconfig = require("lspconfig");
      lspconfig.lua_ls.setup({});
      lspconfig.tsserver.setup({});
      lspconfig.cssls.setup({});
    end
  },

  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp');
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
      });
    end
  },
  {'L3MON4D3/LuaSnip'},
}

