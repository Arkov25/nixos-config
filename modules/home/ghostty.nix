{
  inputs,
  pkgs,
  host,
  ...
}:
let
  ghostty = inputs.ghostty.packages.x86_64-linux.default;
in
{
  home.packages = (with pkgs; [ ghostty ]);

  xdg.configFile."ghostty/config".text = ''
    # Font
    font-family = "Maple Mono"
    font-size = ${if (host == "laptop") then "16" else "17"}
    font-feature = calt
    font-feature = ss03

    bold-is-bright = false
    selection-invert-fg-bg = true

    # Theme
    theme = "gruvbox"
    background-opacity = 0.66

    cursor-style = bar
    cursor-style-blink = false
    adjust-cursor-thickness = 1

    resize-overlay = never
    copy-on-select = false
    confirm-close-surface = false
    mouse-hide-while-typing = true

    window-theme = ghostty
    # window-padding-x = 4
    # window-padding-y = 6
    window-padding-balance = true
    window-padding-color = background
    window-inherit-working-directory = true
    window-inherit-font-size = true
    window-decoration = false

    gtk-titlebar = false
    gtk-single-instance = false
    gtk-tabs-location = bottom
    gtk-wide-tabs = false

    auto-update = off
    term = ghostty
    clipboard-paste-protection = false

    keybind = shift+end=unbind
    keybind = shift+home=unbind
    keybind = ctrl+shift+left=unbind
    keybind = ctrl+shift+right=unbind
    keybind = shift+enter=text:\n
  '';
xdg.configFile."ghostty/themes/gruvbox".text = ''
  background = #262629
  foreground = #F5F4F5

  palette = 0= #262629
  palette = 1= #F1228A
  palette = 2= #4C9F67
  palette = 3= #FFBD2E
  palette = 4= #2A92BF
  palette = 5= #F1228A
  palette = 6= #689D6A
  palette = 7= #F5F4F5
  palette = 8= #505050
  palette = 9= #F1228A
  palette = 10= #4C9F67
  palette = 11= #FFBD2E
  palette = 12= #2A92BF
  palette = 13= #F1228A
  palette = 14= #689D6A
  palette = 15= #F5F4F5

  cursor-color = #F1228A

  selection-foreground = #262629
  selection-background = #F1228A
'';

}