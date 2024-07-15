return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "angularls",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "eslint",
          "graphql",
          "html",
          "jsonls",
          "jdtls",
          "tsserver",
          "markdown_oxide",
          "basedpyright",
          "sqlls",
          "somesass_ls",
          "taplo",
          "tailwindcss",
          "lemminx",
          "yamlls"
        }
			})
		end
	},
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.angularls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.eslint.setup({})
      lspconfig.graphql.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.markdown_oxide.setup({})
      lspconfig.basedpyright.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.somesass_ls.setup({})
      lspconfig.taplo.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.lemminx.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

