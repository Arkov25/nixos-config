{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #CLI-utility
    imv #image viewer
    pamixer #pulseaudio cli mixer
    playerctl #controller for media players
    man-pages #more man pages
    mpv #video player
    wget #wget
    rsync
    #CLI-fun
    cbonsai
    #GUI-Apps
    bleachbit
    hyprshot
    libreoffice
    obs-studio
    pavucontrol 
#    seahorse  
    nnn
    thunderbird
    vlc
    winetricks
  ];
}