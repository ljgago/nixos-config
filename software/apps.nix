
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # browsers
    google-chrome
    firefox

    # file manager
    ranger
    xfce.thunar

    # games
    discord

    # music
    moc
    cmus

    # video
    vlc

    # torrent
    transmission

    # latex
    texlive.combined.scheme-medium

    # dropbox - we don't need this in the environment. systemd unit pulls it in
    dropbox-cli

    # pdf-viewer
    mupdf

    # epub
    calibre
  ];

  # dropbox
  systemd.user.services.dropbox = {
    description = "Dropbox";
    wantedBy = [ "graphical-session.target" ];
    environment = {
      QT_PLUGIN_PATH = "/run/current-system/sw/" + pkgs.qt5.qtbase.qtPluginPrefix;
      QML2_IMPORT_PATH = "/run/current-system/sw/" + pkgs.qt5.qtbase.qtQmlPrefix;
    };
    serviceConfig = {
      ExecStart = "${pkgs.dropbox.out}/bin/dropbox";
      ExecReload = "${pkgs.coreutils.out}/bin/kill -HUP $MAINPID";
      KillMode = "control-group"; # upstream recommends process
      Restart = "on-failure";
      PrivateTmp = true;
      ProtectSystem = "full";
      Nice = 10;
    };
  };

  # docker
  virtualisation.docker.enable = true;
}
