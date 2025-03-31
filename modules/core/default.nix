{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./bootloader.nix
    ./xserver.nix
    ./networking.nix
    ./system.nix
    ./network.nix
      ];
}