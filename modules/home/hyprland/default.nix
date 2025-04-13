{ inputs, ... }:
{
  imports = [
    ./config.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./variables.nix
   # ./default-apps.nix
    inputs.hyprland.homeManagerModules.default
  ];
}