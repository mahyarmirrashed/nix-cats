{ nixpkgs }:
{
  zenvim =
    { pkgs, name, ... }:
    {
      settings = {
        configDirName = name;
        aliases = [
          "edit"
          "e"
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
