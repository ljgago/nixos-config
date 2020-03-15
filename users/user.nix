{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  # Define a user account. Don't forget to set a password with 'passwd'.
  users.defaultUserShell = "/run/current-system/sw/bin/fish";
  users.extraUsers.leo = {
    isNormalUser = true;
    home = "/home/leo";
    description = "Leo";
    extraGroups = ["wheel" "docker"];
    createHome = true;
    shell = "/run/current-system/sw/bin/fish";
  };

  security.sudo.configFile = "
    leo ALL=(ALL:ALL) SETENV: ALL
    ";
}

