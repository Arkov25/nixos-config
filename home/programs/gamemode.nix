{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.gamemode = {
    enable = true;

  };
}