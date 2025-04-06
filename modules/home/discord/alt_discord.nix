{ pkgs, lib, config, ... }:

let
  vencord = pkgs.vencord;
in
{
  options = {
    discord.enable = lib.mkEnableOption "Enable Discord with Vencord";
    discord.vencord.enable = lib.mkEnableOption "Enable Vencord";
    discord.openASAR.enable = lib.mkEnableOption "Enable OpenASAR";
    discord.autoscroll.enable = lib.mkEnableOption "Enable autoscroll";
    discord.package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.discord;
      description = "Discord package to use (default: pkgs.discord)";
    };

    vesktop.enable = lib.mkEnableOption "Enable Vesktop with Vencord";
    vesktop.autoscroll.enable = lib.mkEnableOption "Enable autoscroll for Vesktop";
    vesktop.package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.vesktop;
      description = "Vesktop package to use (default: pkgs.vesktop)";
    };
  };

  config = {
    home.packages = lib.mkMerge [
      (lib.mkIf config.discord.enable [
        (config.discord.package.override {
          withVencord = config.discord.vencord.enable;
          withOpenASAR = config.discord.openASAR.enable;
          inherit vencord;
        } // lib.optionalAttrs pkgs.stdenvNoCC.hostPlatform.isLinux {
          enableAutoscroll = config.discord.autoscroll.enable;
        })
      ])

      (lib.mkIf config.vesktop.enable [
        (config.vesktop.package.override {
          withSystemVencord = true;
          withMiddleClickScroll = config.vesktop.autoscroll.enable;
          inherit vencord;
        })
      ])
    ];

    xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
  };
}
