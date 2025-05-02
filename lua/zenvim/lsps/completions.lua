require("lze").load({
  "blink.cmp",
  event = "DeferredUIEnter",
  on_require = "blink",
  after = function(_)
    require("blink.cmp").setup({
      keymap = { preset = "default" },
      appearance = {
        nerd_font_variant = "mono",
      },
      signature = { enabled = true },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    })
  end,
})
