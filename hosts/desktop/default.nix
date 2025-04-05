{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    ./../../modules/hardware/nvidia.nix
    #./../../modules/hardware/filesystems.nix
    ./../../modules/hardware/windows.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}