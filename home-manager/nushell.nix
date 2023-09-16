{ pkgs, config, ... }:
{
  programs.nushell = {
    enable = true;
    extraConfig = builtins.readFile ./nushell/config.nu;
  };
}


