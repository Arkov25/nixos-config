{inputs, username, host, ...}:
{
  imports = [
    ./discord/discord.nix
    ./browser.nix
    ./git.nix
    ./vscodium.nix
      ];
}