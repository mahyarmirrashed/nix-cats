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
    general = with pkgs.vimPlugins; [ lz-n ];
    config = {
      theme =
        with pkgs.vimPlugins;
        (builtins.getAttr (categories.config.theme or "gruvbox") {
          "catppuccin" = catppuccin-nvim;
          "gruvbox" = gruvbox-nvim;
          "onedark" = onedark-nvim;
          "tokyonight" = tokyonight-nvim;
        });
    };
  };

  # Plugins that will not loaded at startup
  # Use `lze` or `lz.n` to lazy load these
  # Use `:NixCats pawsible` to see the `packadd` expects
  optionalPlugins = { };

  # Runtime plugin dependencies
  lspsAndRuntimeDeps = {
    lang = {
      go = with pkgs; [
        gopls
        gotools
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
