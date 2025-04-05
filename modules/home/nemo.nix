{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nemo
    polkit
    pkexec
  ];
}