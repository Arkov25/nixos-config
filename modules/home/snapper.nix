{ pkgs, ... }:
{
  home.packages = with pkgs; [
    snapper
    snapper-gui
  ];
}