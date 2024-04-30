{ pkgs, ... }:

{
  opengl.driSupport32Bit = true;
  programs.steam.enable = true;
  systemPackages = [ pkgs.steam ];
}
