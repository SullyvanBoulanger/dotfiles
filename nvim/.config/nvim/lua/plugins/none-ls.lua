return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          require("none-ls.formatting.eslint_d"),
          require("none-ls.diagnostics.eslint_d"),
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.diagnostics.prettier,
          null_ls.builtins.diagnostics.stylua,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "stylua",
          "jq",
          "eslint_d",
          "prettier",
        },
      })
    end,
  },
}
