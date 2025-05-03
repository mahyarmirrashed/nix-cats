-- Set leader key
vim.g.mapleader = " "

-- Enables setting LSPs within the `lze` specs
require("lze").register_handlers(require("lzextras").lsp)

-- Ensure that cache directory is made
vim.fn.mkdir(vim.fn.stdpath("cache"), "p")

-- Source configuration modules
require("zenvim.autocmds")
require("zenvim.keymaps")
require("zenvim.options")
require("zenvim.themes")

require("zenvim.lsps")
require("zenvim.misc")
require("zenvim.ui")
