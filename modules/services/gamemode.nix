{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    gamemode
  ];

  services.gamemode.enable = true;
}