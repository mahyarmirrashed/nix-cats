require("lze").load({
  "gruvbox.nvim",
  enabled = nixCats("theme.gruvbox") or false,
  after = function(_) require("gruvbox").setup({ terminal_colors = true }) end,
})

if nixCats("theme.gruvbox") then
  vim.cmd.colorscheme("gruvbox")
else
  vim.cmd.colorscheme("slate")
end
