{ nixpkgs }:
{
  edit =
    { pkgs, name, ... }:
    {
      settings = {
        configDirName = name;
      };
      categories = {
        debug = true;
        general = true;
        lang = true;
        tools = true;
        config = {
          theme = "gruvbox";
        };
      };
      extra = {
        nixdExtras = { inherit nixpkgs; };
      };
    };
}
