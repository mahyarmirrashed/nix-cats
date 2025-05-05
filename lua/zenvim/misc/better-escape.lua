require("lze").load({
  "better-escape.nvim",
  after = function(_)
    require("better_escape").setup({
      mappings = {
        t = {
          j = {
            k = false,
          },
        },
      },
    })
  end,
})
