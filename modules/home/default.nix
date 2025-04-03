{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./hyprland/hyprland.nix
    ./browser.nix
    ./git.nix
    ./vscodium.nix
      ];
}