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
  after = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofumpt", "goimports" },
        nix = { "nixfmt-rfc-style" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    })
  end,
})
