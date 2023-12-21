{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowBroken = true;
            allowUnsupportedSystem = true;
          };
        };

        node = pkgs.nodejs-18_x;
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.act
            pkgs.just
            pkgs.poetry
            pkgs.python311
          ];
        };
      }
    );
}