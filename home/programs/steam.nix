{
  pkgs,
  config,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.steam = {
    enable = true;

  hardware.opengl.driSupport32Bit = true;

  };
}