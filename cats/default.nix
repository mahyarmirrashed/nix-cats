{ nixpkgs }:
{
  categoryDefinitions = import ./categoryDefinitions.nix;
  packageDefinitions = import ./packageDefinitions.nix { inherit nixpkgs; };
}
