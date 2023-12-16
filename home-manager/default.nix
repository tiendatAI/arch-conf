{ config, pkgs, ... }:
{
  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
