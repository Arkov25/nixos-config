{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userName = "Arkov25";
    userEmail = "Marko.Veljkovic25@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
