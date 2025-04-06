{ pkgs, ... }:
{
  home.packages = with pkgs; [
    xivlauncher
    gamescope
    lutris
    gamemode
    mangohud
  ];
}