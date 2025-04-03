{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland/default.nix
    ./browser.nix
    ./git.nix
    ./kitty.nix
    ./rofi.nix
    ./vscodium.nix
      ];
}