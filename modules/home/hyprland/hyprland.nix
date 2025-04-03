{ inputs, pkgs, ... }:
{
 # Enabling hyprlnd on NixOS
programs.hyprland = {
  enable = true;
  nvidiaPatches = true;
  xwayland.enable = true;
};

#environment.sessionVariables = {
 # If your cursor becomes invisible
 # WLR_NO_HARDWARE_CURSORS = "1";
 # Hint electron apps to use wayland
 # NIXOS_OZONE_WL = "1";
#};

# waybar
  programs.waybar = {
    enable = true;
  };
  programs.waybar.package = pkgs.waybar.overrideAttrs (oa: {
    mesonFlags = (oa.mesonFlags or [ ]) ++ [ "-Dexperimental=true" ];
  });

#XDG portal
xdg.portal.enable = true;
xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}