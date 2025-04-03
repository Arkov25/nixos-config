{ inputs, ... }:
{
  imports = [
    ./hyprland.nix
    inputs.hyprland.homeManagerModules.default
  ];
}