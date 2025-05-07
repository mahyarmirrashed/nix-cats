require("lze").load({
  "conform.nvim",
  event = "BufWritePre",
  keys = {
    {
      "<leader>lf",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      desc = "Format Document",
      mode = { "n", "v" },
    },
  },
  after = function(_)
    require("conform").setup({
      formatters_by_ft = {
        go = { "gofumpt", "goimports" },
        json = { "jq" },
        lua = { "stylua" },
        nix = { "nixfmt-rfc-style" },
        yaml = { "yamlfmt" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    })
  end,
})
