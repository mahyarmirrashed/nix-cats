require("lze").load({
  "nvim-autopairs",
  event = "DeferredUIEnter",
  after = function(_) require("nvim-autopairs").setup({ check_ts = true }) end,
})
