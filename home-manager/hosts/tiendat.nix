{ config, pkgs, ... }:

{
  imports = [
    ../bash.nix
    ../nushell.nix
    ../direnv.nix
  ];

  home.username = "tiendat";
  home.homeDirectory = "/home/tiendat";

  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    python311
    nodejs 
    
    # shell tools
    nushell
    bat # alternative of cat
    fd # alternative of find
    zoxide # alternative of cd
    joshuto # terminal file manager
    ripgrep # recursively searches directories
    eza # a modern replacement for ls
    thefuck # corrects your previous console command
    du-dust # a more intuitive version of du in rust
    silver-searcher # a code-searching tool similar to ack, but faster
    tldr # collaborative cheatsheets for console commands
    atuin # history shell
    trash-cli # alternative for rm
    rclone # drive cmdline tool


    # config editors
    neovim
    # required packages
    lazygit

    # main editors
    # required packages
    cmake
    fzf
    languagetool
    hunspell
    mpd
    mpc-cli
    wordnet

    # required packages for eaf
    wmctrl xdotool
    # eaf-browser
    aria 
  ] ++
    (with pkgs.python311Packages; [
      pandas
      requests
      sexpdata tld
      pyqt6 pyqt6-sip
      pyqt6-webengine epc lxml # for eaf
      qrcode # eaf-file-browser
      pysocks # eaf-browser
      pymupdf # eaf-pdf-viewer
      pypinyin # eaf-file-manager
    ]);

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
