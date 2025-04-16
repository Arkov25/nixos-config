{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "nm-applet &"
        "waybar &"
        "swaync &"
      ];

      input = {
        kb_layout = "de,de";
        kb_options = "grp:alt_caps_toggle";
        numlock_by_default = true;
      };

      general = {
        "$mainMod" = "SUPER";
        layout = "dwindle";
        gaps_in = 6;
        gaps_out = 12;
        border_size = 2;
        "col.active_border" = "rgb(F1228A) rgb(F5F4F5) 45deg";
        "col.inactive_border" = "0x00000000";
      };

      misc = {
        disable_autoreload = true;
        disable_hyprland_logo = true;
      };

      decoration = {
        rounding = 0;
        blur = {
          enabled = true;
          size = 3;
          passes = 2;
        };
        shadow = {
          enabled = true;
          offset = "0 2";
          range = 20;
          color = "rgba(00000055)";
        };
      };

      animations = {
        enabled = true;
        bezier = [
          "fluent_decel, 0, 0.2, 0.4, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutCubic, 0.33, 1, 0.68, 1"
          "fade_curve, 0, 0.55, 0.45, 1"
        ];
        animation = [
          "windowsMove, 1, 2, fluent_decel, slide"
          "fadeIn, 1, 3, fade_curve"
          "fadeOut, 1, 3, fade_curve"
          "workspaces, 1, 4, easeOutCubic, fade"
        ];
      };

      bind = [
        "$mainMod, F1, exec, show-keybinds"
        "$mainMod, Return, exec, ghostty"
        "$mainMod SHIFT, Return, exec, [float; size 1111 700] ghostty"
        "$mainMod, Q, killactive,"
        "$mainMod, F, fullscreen, 0"
        "$mainMod SHIFT, F, fullscreen, 1"
        "$mainMod, Space, exec, toggle_float"
        "$mainMod, D, exec, rofi -show drun || pkill rofi"
        "$mainMod, Escape, exec, swaylock"
        "$mainMod, P, pseudo,"
        "$mainMod, X, togglesplit,"
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod, left, resizeactive, -80 0"
        "$mainMod, right, resizeactive, 80 0"
        "$mainMod, up, resizeactive, 0 -80"
        "$mainMod, down, resizeactive, 0 80"
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"
        "$mainMod CTRL, left, movefocus, l"
        "$mainMod CTRL, right, movefocus, r"
        "$mainMod CTRL, up, movefocus, u"
        "$mainMod CTRL, down, movefocus, d"
        "$mainMod, O, exec, pavucontrol"
        "$mainMod, G, exec, zen"
        "$mainMod, Enter, exec, ghostty"

        #Screenshot
        ",Print, exec, screenshot --copy"
        "$mainMod, Print, exec, screenshot --save"
        "$mainMod SHIFT, Print, exec, screenshot --swappy"

        #Wallpaper switch
        "$mainMod, U, exec, setwall"
        "$mainMod, W, exec, setwallp s n"
        "$mainMod SHIFT, W, exec, setwallp n n"
        "$mainMod SHIFT, U, exec, SEL=$(cd ~/pics/wallpapers/ ; for img in *; do echo -en \"$img\\0icon\\x1f$img\\n\" ; done | rofi -dmenu -show-icons) && setwall \"$SEL\""
      ];

      windowrule = [
        "float,class:^(Viewnior)$"
        "float,class:^(imv)$"
        "float,class:^(mpv)$"
        "tile,class:^(Aseprite)$"
        "float,class:^(Audacious)$"
        "pin,class:^(rofi)$"
        "pin,class:^(waypaper)$"
        "float,title:^(Transmission)$"
        "float,title:^(Volume Control)$"
        "float,title:^(Firefox — Sharing Indicator)$"
        "float,title:^(Picture-in-Picture)$"
        "pin,title:^(Picture-in-Picture)$"
        "workspace 1, class:^(zen)$"
        "workspace 3, class:^(evince)$"
        "workspace 4, class:^(Gimp-2.10)$"
        "workspace 4, class:^(Aseprite)$"
        "workspace 5, class:^(Audacious)$"
        "workspace 5, class:^(Spotify)$"
        "workspace 8, class:^(com.obsproject.Studio)$"
        "workspace 10, class:^(discord|vesktop)$"
        "workspace 14, class:^(xivlauncher-rb)$"
        #"workspace 10, class:^(WebCord)$"
      ];

      workspace = [
        "w[t1], gapsout:0, gapsin:0"
        "w[tg1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };

    extraConfig = "
      monitor=,preferred,auto,auto

      xwayland {
        force_zero_scaling = true
      }
    ";
  };
}
