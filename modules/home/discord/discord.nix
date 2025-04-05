{ pkgs, lib, ... }:

let
  vencord = pkgs.vencord; # Stelle sicher, dass vencord verfügbar ist
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

  xdg.configFile."Vencord/themes/gruvbox.theme.css".source = ./gruvbox.css;
}
