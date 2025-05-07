require("lze").load({
  "lualine.nvim",
  event = "DeferredUIEnter",
  after = function(_)
    require("lualine").setup({
      options = {
        theme = "gruvbox_dark",
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            symbols = { modified = " ●", alternate_file = "" },
            mode = 2,
          },
        },
        lualine_z = { "tabs" },
      },
    })

    -- Map <leader>1 to <leader>9 for jumping to buffers 1 through 9
    for i = 1, 9 do
      vim.keymap.set("n", "<leader>" .. i, ":LualineBuffersJump " .. i .. "<cr>", { noremap = true, silent = true })
    end
    -- <leader>0 goes to the last buffer
    vim.keymap.set("n", "<leader>0", ":b#<cr>", { noremap = true, silent = true })
  end,
})
