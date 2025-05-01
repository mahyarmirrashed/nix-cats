-------------------------------------------------------------------------------
-- Configuration for conform.nvim
-------------------------------------------------------------------------------

return {
  "conform.nvim",
  event = "DeferredUIEnter",
  after = function(_)
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
    })
  end,
}
