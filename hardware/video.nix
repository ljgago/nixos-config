{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "radeon" ];
  hardware = {
    cpu.amd.updateMicrocode = true;
    enableRedistributableFirmware = true;
    opengl.enable = true;
    opengl.driSupport = true;
  };

}
