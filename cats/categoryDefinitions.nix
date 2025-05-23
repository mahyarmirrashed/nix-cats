{
  pkgs,
  settings,
  categories,
  extra,
  name,
  mkNvimPlugin,
  ...
}:
let
  famous-quotes-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "famous-quotes-nvim";
    version = "v0.1";
    src = pkgs.fetchFromGitHub {
      owner = "mahyarmirrashed";
      repo = "famous-quotes.nvim";
      rev = "v0.1";
      sha256 = "179hgxyhzca4g0xmx02kl7gy7c6058kgww4zv7f1dvl2mf59ln67";
    };
  };
in
{
  # Plugins that will be loaded at startup
  startupPlugins = {
    general = with pkgs.vimPlugins; [
      # Lazy-loading library
      lze
      lzextras
      # UI-related plugins
      oil-nvim
      mini-icons
      # LSP-related plugins
      alpha-nvim
      auto-session
      conform-nvim
      famous-quotes-nvim
      nvim-lint
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
      vim-startuptime
    ];
    theme = {
      gruvbox = with pkgs.vimPlugins; [ gruvbox-nvim ];
    };
  };

  # Plugins that will not loaded at startup
  # Use `lze` or `lz.n` to lazy load these
  # Use `:NixCats pawsible` to see the `packadd` expects
  optionalPlugins = {
    general = with pkgs.vimPlugins; [
      better-escape-nvim
      blink-cmp
      cloak-nvim
      comment-nvim
      fidget-nvim
      gitsigns-nvim
      lazygit-nvim
      lualine-nvim
      mini-surround
      nvim-autopairs
      plenary-nvim
      telescope-nvim
      todo-comments-nvim
      treesj
      trouble-nvim
      which-key-nvim
    ];
  };

  # Runtime plugin dependencies
  lspsAndRuntimeDeps = {
    general = with pkgs; [
      fd
      lazygit
      ripgrep
    ];
    lang = {
      docker = with pkgs; [ hadolint ];
      go = with pkgs; [
        go
        gopls
        gofumpt
        gotools
      ];
      javascript = with pkgs; [ jq ];
      lua = with pkgs; [
        lua-language-server
        stylua
      ];
      nix = with pkgs; [
        nixd
        nixfmt-rfc-style
      ];
      python = with pkgs; [
        basedpyright
        ruff
      ];
      yaml = with pkgs; [ yamlfmt ];
    };
  };

  # Runtime environment variables
  environmentVariables = { };

  # Runtime shared libraries
  sharedLibraries = { };

  # Extra wrapper arguments, if needed
  # See https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/setup-hooks/make-wrapper.sh
  extraWrapperArgs = { };

  # Extra categories to enable
  # See :help nixCats.flake.outputs.categoryDefinitions.default_values
  extraCats = { };
}
