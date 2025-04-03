{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  powerManagement.cpuFreqGovernor = "performance";


hardware = {
 #   Opengl
    opengl.enable = true;

 #  Most wayland compositors need this
    nvidia.modesetting.enable = true;
};

}