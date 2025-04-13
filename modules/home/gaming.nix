{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gamescope
    lutris
    gamemode
    mangohud
    wine
    winetricks
    bottles
  ];
}