{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland
    ./swaync/swaync.nix
    ./waybar
    ./browser.nix
    ./gaming.nix
    ./ghostty.nix
    ./gnome.nix
    ./gtk.nix
    ./git.nix
    ./kitty.nix
    ./nemo.nix
    ./packages.nix
    ./rofi.nix
    ./snapper.nix
    ./swaylock.nix
    ./swayosd.nix
    ./via.nix
    ./vscodium.nix
    ./waypaper.nix
      ];
}