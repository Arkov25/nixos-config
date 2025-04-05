{ pkgs, lib, ... }:

let
  vencord = pkgs.vencord;

  # Beispielhafte Vencord Plugin-Konfiguration via nixcord
  vencordConfig = nixcord.build {
    settings = {
      # Allgemeine Einstellungen
      "readAllNotifications" = false;
      "hideBlockedMessages" = false;
    };

    plugins = {
      MessageLogger = {
        enabled = false;
      };
      AlwaysAppearOnline = {
        enabled = false;
      };
      FakeNitro = {
        enabled = false;
      };
    };
  };
in {
  home.packages = [
    (pkgs.discord.override ({
      withVencord = true;
      withOpenASAR = true;
      vencord = vencord;
      enableAutoscroll = true;
    }))
    pkgs.webcord
  ];

  # Plugin Theme
  xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;

  # Vencord Plugin- und Settings-Dateien via nixcord
  xdg.configFile."Vencord/plugins.json".text = builtins.toJSON vencordConfig.plugins;
  xdg.configFile."Vencord/settings/settings.json".text = builtins.toJSON vencordConfig.settings;
}