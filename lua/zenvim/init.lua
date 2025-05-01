-- Set leader key
vim.g.mapleader = " "

-- Enables setting LSPs within the `lze` specs
require("lze").register_handlers(require("lzextras").lsp)

-- Source configuration modules
require("zenvim.autocmds")
require("zenvim.keymaps")
require("zenvim.options")

require("zenvim.lsps")
require("zenvim.misc")
require("zenvim.ui")
