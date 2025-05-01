-------------------------------------------------------------------------------
-- Configuration for conform.nvim
-------------------------------------------------------------------------------

return {
  "conform.nvim",
  keys = {
    { "<leader>FF", function()end, desc = "[F]ormat [F]ile" },
  },
  after = function(_)
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>FF", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "[F]ormat [F]ile" })
  end,
}
