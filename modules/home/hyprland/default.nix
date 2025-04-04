{ inputs, ... }:
{
  imports = [
    ./hyprland.nix
    ./hyprlock.nix
    inputs.hyprland.homeManagerModules.default
  ];
}