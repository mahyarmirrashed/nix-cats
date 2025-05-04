require("lze").load({
  "nvim-lint",
  event = "BufReadPost",
  after = function(_)
    require("lint").linters_by_ft = {
      dockerfile = { "hadolint" },
      alpha = {},
    }

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
      callback = function() require("lint").try_lint() end,
    })
  end,
})
