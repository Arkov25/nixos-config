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
    rsync #alternative to cp
    grimblast #screenshots
    poweralertd #power notifications
    docker
    bbe#binary file editor
    #CLI-fun
    cbonsai
    fastfetch
    tty-clock
    cmatrix
    pipes
    sl
 #   hellwal#color picker from wallpaper
    #GUI-Apps
    bleachbit
    libreoffice
    obs-studio
    pavucontrol 
#    seahorse  
    nnn
    thunderbird
    vlc
    gnome-calculator
    orca-slicer #3D Printing slicer
    bitwarden #Password manager
  ];
}