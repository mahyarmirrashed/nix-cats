-------------------------------------------------------------------------------
-- Configuration for surround.nvim
-------------------------------------------------------------------------------

return {
  "surround.nvim",
  event = "DeferredUIEnter",
  after = function(_) require("surround").setup({}) end,
}
