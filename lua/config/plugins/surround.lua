-------------------------------------------------------------------------------
-- Configuration for nvim-surround
-------------------------------------------------------------------------------

return {
  "surround.nvim",
  event = "DeferredUIEnter",
  after = function(_)
    require("surround").setup({})
  end,
}
