{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    ./../../modules/hardware/nvidia.nix
    #./../../modules/hardware/filesystems.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}