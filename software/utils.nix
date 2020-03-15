{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # editors
    vim
    neovim

    # utils
    xsel
    wget
    git
    htop
    tree
    udiskie
    killall
    ctags
    unzip
  ];

  programs.ssh.extraConfig = "ServerAliveInterval 120";
}
