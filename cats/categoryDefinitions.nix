{
  pkgs,
  settings,
  categories,
  extra,
  name,
  mkNvimPlugin,
  ...
}:
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
      nvim-lint
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
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
      blink-cmp
      cloak-nvim
      comment-nvim
      gitsigns-nvim
      lazygit-nvim
      mini-surround
      nvim-autopairs
      plenary-nvim
      telescope-nvim
      todo-comments-nvim
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
