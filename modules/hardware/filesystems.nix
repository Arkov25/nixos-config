{ config, lib, username, ... }:

{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/3feed12d-e87f-4f20-b0ab-0a5cb0145c04";
      fsType = "btrfs";
      options = [ "subvol=@" "compress=zstd:1" "noatime" ];
    };

    "/var/log" = {
      device = "/dev/disk/by-uuid/3feed12d-e87f-4f20-b0ab-0a5cb0145c04";
      fsType = "btrfs";
      options = [ "subvol=@var_log" "compress=zstd:1" "noatime" ];
    };

    "/home" = {
      device = "/dev/disk/by-uuid/3feed12d-e87f-4f20-b0ab-0a5cb0145c04";
      fsType = "btrfs";
      options = [ "subvol=@home" "compress=zstd:1" "noatime" ];
    };

    # Entfernen des Eintrags für "/home/${username}/Games" da das Subvolume gelöscht wurde
  };
}