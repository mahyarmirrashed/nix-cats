-------------------------------------------------------------------------------
-- Plugin Settings
-------------------------------------------------------------------------------

-- Enables setting LSPs within the `lze` specs
require("lze").register_handlers(require("lzextras").lsp)

-- Load plugins
require("lze").load({
  { import = "config.plugins.lsps" },
  { import = "config.plugins.oil" },
  { import = "config.plugins.conform" },
  { import = "config.plugins.surround" },
})
