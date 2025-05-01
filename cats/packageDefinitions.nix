{ nixpkgs }:
{
  edit =
    { pkgs, name, ... }:
    {
      settings = {
        configDirName = name;
        aliases = [
          "e"
          "zenvim"
        ];
      };
      categories = {
        debug = true;
        general = true;
        lang = true;
        theme = true;
        tools = true;
      };
      extra = {
        nixdExtras = { inherit nixpkgs; };
      };
    };
}
