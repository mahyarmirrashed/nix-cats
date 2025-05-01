{
  description = "Mahyar's supercalifragilisticexpialidocious Neovim configuration using Nix.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixCats.url = "github:BirdeeHub/nixCats-nvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixCats,
      flake-utils,
    }@inputs:
    let
      cats = import ./cats { inherit nixpkgs; };

      inherit (nixCats) utils;
      inherit (cats) categoryDefinitions packageDefinitions;

      luaPath = "${./.}";

      defaultPackageName = "edit";

      dependencyOverlays = [
        (utils.standardPluginOverlay inputs)
      ];
    in
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        nixCatsBuilder = utils.baseBuilder luaPath {
          inherit
            nixpkgs
            system
            dependencyOverlays
            ;
        } categoryDefinitions packageDefinitions;
        defaultPackage = nixCatsBuilder defaultPackageName;
      in
      {
        formatter = pkgs.nixfmt-tree.override {
          settings = {
            formatter.nixfmt = {
              options = [ "--strict" ];
            };
          };
        };

        packages = utils.mkAllWithDefault defaultPackage;
      }
    );
}
