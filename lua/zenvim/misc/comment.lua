require("lze").load({
  "comment.nvim",
  after = function(_)
    require("Comment").setup({
      toggler = {
        line = "<leader>/",
        block = "<leader>.",
      },
      opleader = {
        line = "<leader>/",
        block = "<leader>.",
      },
    })
  end,
})
