{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/hardware/nvidia.nix
    ../../modules/hardware/pipewire.nix
    #../../modules/services/default.nix
    #./../../modules/hardware/filesystems.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}