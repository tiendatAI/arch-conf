{ config, pkgs, ... }:

{
  imports = [
    ../bash.nix
    ../nushell.nix
    ../direnv.nix

    ../packages.nix
    ../default.nix
  ];

  home.username = "tiendat";
  home.homeDirectory = "/home/tiendat";
}
