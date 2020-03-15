{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # bar menu
    (polybar.override {
      i3Support = true;
      mpdSupport = true;
      pulseSupport = true;
    })
    # wallpaper
    feh
    # terminal
    alacritty
    termite
    # input key
    sxhkd
    # application launcher
    rofi
    # notification daemon
    dunst
    # graphical screen config
    arandr
    # compositor
    compton
    #
    pywal
  ];

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    layout = "es";

    displayManager.defaultSession = "none+i3";

    desktopManager = {
      # default = "none";
      xterm.enable = false;
    };

    displayManager.lightdm = {
      enable = true;
      autoLogin.user = "leo";
    };

    libinput = {
      enable = true;
    };

    # xkbOptions = "ctrl:nocaps";

    windowManager = {
      bspwm.enable = true;
      i3.enable = true;
      i3.package = pkgs.i3-gaps;
      # default = "bspwm";
    };
  };
}
