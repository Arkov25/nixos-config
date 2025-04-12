{
  pkgs,
  lib,
  inputs,
  ...
}:
{

  imports = [ inputs.xivlauncher-rb-nix.homeManagerModules.default ];

  programs.xivlauncher-rb = {
    enable = true;
  };
}