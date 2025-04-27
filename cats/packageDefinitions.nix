{ nixpkgs }:
{
  edit =
    { pkgs, name, ... }:
    {
      settings = {
        configDirName = name;
      };
      categories = {
        general = true;
        lang = {
          lua = true;
          markdown = true;
          nix = true;
        };
        tools = {
          cmp = true;
        };
      };
      extra = {
        nixdExtras = { inherit nixpkgs; };
      };
    };
}
