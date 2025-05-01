-------------------------------------------------------------------------------
-- Configuration for LSPs
-------------------------------------------------------------------------------

local function on_attach(_, bufnr)
  -- Helper function for normal-mode keymaps
  local nmap = function(keys, func, desc)
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
  end

  -- Essential LSP keybindings
  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

  -- XXX: Add references without Telescope
  nmap("gr", vim.lsp.buf.references, "[G]oto [R]eferences")

  vim.api.nvim_buf_create_user_command(
    bufnr,
    "Format",
    function(_) vim.lsp.buf.format() end,
    { desc = "Format current buffer with LSP" }
  )
end

return {
  {
    "nvim-lspconfig",
    on_require = { "lspconfig" },
    lsp = function(plugin)
      vim.lsp.config(plugin.name, plugin.lsp or {})
      vim.lsp.enable(plugin.name)
    end,
    before = function()
      vim.lsp.config("*", {
        on_attach = on_attach,
        capabilities = vim.lsp.protocol.make_client_capabilities(),
      })
    end,
  },
  {
    "lua_ls",
    lsp = {
      filetypes = { "lua" },
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          formatters = { ignoreComments = true },
          telemetry = { enabled = false },
        },
      },
    },
  },
  {
    "nixd",
    lsp = {
      filetypes = { "nix" },
    },
  },
  {
    "gopls",
    lsp = {
      filetypes = { "go", "gomod", "gowork", "gotmpl" },
    },
  },
}
