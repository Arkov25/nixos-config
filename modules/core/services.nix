{ pkgs, ... }:
{
  services = {
    gvfs.enable = true;
    blueman.enable = true; #bluetooth
    gnome = {
      tinysparql.enable = true;
      gnome-keyring.enable = true;
      #services.gnome.gnome-keyring.enable = true;
      #security.pam.services.hyprland.enableGnomeKeyring = true;
    };
    dbus.enable = true;
    fstrim.enable = true;

    # needed for GNOME services outside of GNOME Desktop
    dbus.packages = with pkgs; [
      gcr
      gnome-settings-daemon
    ];
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}