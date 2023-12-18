{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-22.11") {} }:

pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (ps: [
      ps.flask
    ]))

    pkgs.curl
    pkgs.jq
  ];
}
