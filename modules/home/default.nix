{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland
    ./browser.nix
    ./git.nix
    ./kitty.nix
    ./rofi.nix
    ./vscodium.nix
      ];
}