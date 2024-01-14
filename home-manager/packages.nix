{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # python global
    # (python310.withPackages (ps: with ps; [
    # ]))

    nushell # mordern shell
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
    neofetch # system info script

    # config editors
    # required packages
    lazygit

    # main editors
    # required packages
    fzf
    languagetool
    hunspell
    mpd
    mpc-cli
    wordnet
    nodejs 
    libvterm
  ];
}
