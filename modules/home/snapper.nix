{ pkgs, ... }:
{
  home.packages = with pkgs; [
    snapper
  ];
}