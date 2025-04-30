-------------------------------------------------------------------------------
-- Configuration for nvim-surround
-------------------------------------------------------------------------------

return {
  "nvim-surround",
  event = "DeferredUIEnter",
  after = function(plugin)
    require("nvim-surround").setup()
  end,
}

