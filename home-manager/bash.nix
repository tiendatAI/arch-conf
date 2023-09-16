{ pkgs, config, ... }:
{
   programs.bash = {
      enable = true; # see note on other shells below
      bashrcExtra = builtins.readFile ./bash/.bashrc;
  }; 
}


