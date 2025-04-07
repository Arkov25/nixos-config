{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gamescope
    lutris
    gamemode
    mangohud
    winetricks
  ];
}