{ nixpkgs }:
{
  edit =
    { pkgs, name, ... }:
    {
      settings = {
        configDirName = name;
        aliases = [ "e" ];
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
