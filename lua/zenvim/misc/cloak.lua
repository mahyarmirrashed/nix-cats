require("lze").load({
  "cloak.nvim",
  event = "DeferredUIEnter",
  after = function(_) require("cloak").setup() end,
})
