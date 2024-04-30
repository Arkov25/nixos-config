{
  pkgs,
  config,
  ...
}:
# media - control and enjoy audio/video
{
  # imports = [
  # ];

  home.packages = with pkgs; [
    steam
  ];

  programs = {
    steam = {
      enable = true;
    };

    steam.enable = true;
  };
}