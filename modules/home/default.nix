{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland
    ./waybar
    ./browser.nix
    ./git.nix
    ./kitty.nix
    ./nemo.nix
    ./packages.nix
    ./rofi.nix
    ./swaylock.nix
    ./via.nix
    ./vscodium.nix
    ./waypaper.nix
      ];
}