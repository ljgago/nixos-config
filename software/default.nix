{ config, pkgs, ... }:

{
  imports = [
    ./desktop.nix
    ./develop.nix
    ./fonts.nix
    ./apps.nix
    ./utils.nix
  ];
}

