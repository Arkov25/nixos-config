{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland
    ./browser.nix
    ./git.nix
    ./kitty.nix
    ./rofi.nix
    ./swaylock.nix
    ./via.nix
    ./vscodium.nix
      ];
}