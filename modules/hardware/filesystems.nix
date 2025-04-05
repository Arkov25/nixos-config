# /etc/nixos/filesystems.nix
{ config, lib, username, ... }:

{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/175a7bf3-630b-45be-bd80-b0d08890f887";
      fsType = "btrfs";
      options = [ "subvol=@" "compress=zstd:1" "noatime" ];
    };

    "/nix" = {
      device = "/dev/disk/by-uuid/175a7bf3-630b-45be-bd80-b0d08890f887";
      fsType = "btrfs";
      options = [ "subvol=@nix" "compress=zstd:1" "noatime" ];
    };

    "/var/log" = {
      device = "/dev/disk/by-uuid/175a7bf3-630b-45be-bd80-b0d08890f887";
      fsType = "btrfs";
      options = [ "subvol=@var_log" "compress=zstd:1" "noatime" ];
    };

    "/home" = {
      device = "/dev/disk/by-uuid/175a7bf3-630b-45be-bd80-b0d08890f887";
      fsType = "btrfs";
      options = [ "subvol=@home" "compress=zstd:1" "noatime" ];
    };

    "/home/${username}/Games" = {
      device = "/dev/disk/by-uuid/175a7bf3-630b-45be-bd80-b0d08890f887";
      fsType = "btrfs";
      options = [ "subvol=@home/${username}/Games" "compress=zstd:1" "noatime" ];

    
    };
  };
}