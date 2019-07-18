# Boot configuration

{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.initrd.luks.devices = [
    {
      name = "enc-pv";
      device = "/dev/disk/by-uuid/d09b7acb-f49d-4d4d-9af6-2f7d9a5fe1f2";
    }
  ];
  boot.cleanTmpDir = true;
  boot.kernelModules = [ "dm-snapshot" ];
}