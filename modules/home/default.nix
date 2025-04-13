{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland.nix
    ./swaync/swaync.nix
    ./waybar.nix
    ./browser.nix
    ./gaming.nix
    ./ghostty.nix
    ./gnome.nix
    ./gtk.nix
    ./git.nix
    ./gui-filemanager.nix
    ./kitty.nix
    ./packages.nix
    ./rofi.nix
    ./snapper.nix
    ./swaylock.nix
    ./swayosd.nix
    ./university.nix
    ./via.nix
    ./vscodium.nix
    ./waypaper.nix
      ];
}