{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    ./../../modules/hardware/nvidia.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}