{
  config,
  inputs,
  settings,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [ cudatoolkit ];

  hardware.graphics.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  services.xserver.videoDrivers = [ "nvidia" ];

  boot.kernelParams = [
    "nvidia-drm.modeset=1"
    "nvidia-drm.fbdev=1"
  ];

  hardware.nvidia = {
    powerManagement = {
      enable = true;
      finegrained = false;
    };
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages;
  };
}