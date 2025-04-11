{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/hardware/intel.nix
  ];
    services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = null;
      PermitRootLogin = "yes";
      };
  };
}