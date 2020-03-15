{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./video.nix
  ];
}
