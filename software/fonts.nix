{ config, pkgs, ... }:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;

    fontconfig = {
      enable = true;
      antialias = true;
      useEmbeddedBitmaps = true;

      defaultFonts = {
        serif = [
          "Source Serif Pro"
          "DejaVu Serif"
        ];
        sansSerif = [
          "Source Sans Pro"
          "DejaVu Sans"
        ];
        monospace = [
          "Hack"
        ];
      };
    };

    fonts = with pkgs; [
      hack-font
      hasklig
      source-code-pro
      nerdfonts
      font-awesome
      powerline-fonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-extra
    ];
  };
}

