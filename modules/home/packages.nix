{ pgks, ... }:
{
  home.packages = with pkgs; [
    #gimp
    thunderbird
    #obs-studio
    #hyprshot
  ];
}