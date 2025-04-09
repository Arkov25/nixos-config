{ pkgs, host, ... }:
let
  text = "rgb(251, 241, 199)";
in
{
  home.packages = [ pkgs.hyprlock ];
  xdg.configFile."hypr/hyprlock.conf".text = ''
    background {
      path = ${../../../wallpapers/otherWallpaper/gruvbox/skull.png}
      blur_passes = 2
    }

    general {
      hide_cursor = true
      ignore_empty_input = true
    }

    label {
      text = cmd[update:1000] echo "$(date +"%k:%M")"
      color = rgba(235, 219, 178, .9)
      font_size = 115
      font_family = Maple Mono Bold
      position = 0, ${if (host == "laptop") then "-25" else "-150"}
      halign = center
      valign = top
    }

    label {
      text = cmd[update:1000] echo "- $(date +"%A, %B %d") -"
      color = rgba(235, 219, 178, .9)
      font_size = 18
      font_family = Maple Mono
      position = 0, ${if (host == "laptop") then "-225" else "-350"}
      halign = center
      valign = top
    }

    shape {
      size = 300, 50
      color = rgba(102, 92, 84, .33)
      rounding = 10
      position = 0, ${if (host == "laptop") then "120" else "270"}
      halign = center
      valign = bottom
    }

    label {
      text =   $USER
      color = rgba(235, 219, 178, 1)
      font_size = 15
      font_family = Maple Mono Bold
      position = 0, ${if (host == "laptop") then "131" else "281"}
      halign = center
      valign = bottom
    }

    input-field {
      size = 300, 50
      rounding = 10
      outer_color = rgba(102, 92, 84, .33)
      inner_color = rgba(102, 92, 84, .33)
      color = rgba(235, 219, 178, .9)
      font_color = rgba(235, 219, 178, .9)
      font_size = 14
      font_family = Maple Mono Bold
      placeholder_text = <i><span foreground="#fbf1c7">Enter Password</span></i>
      position = 0, ${if (host == "laptop") then "50" else "200"}
      halign = center
      valign = bottom
    }
  '';
}
