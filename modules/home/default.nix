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
    ./gui-filemanager.nix
    ./kitty.nix
    ./packages.nix
    ./rofi.nix
    ./scripts.nix
    ./snapper.nix
    ./swaylock.nix
    ./swayosd.nix
    ./university.nix
    ./via.nix
    ./vscodium.nix
    ./waypaper.nix
      ];
}