# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    /etc/nixos/hardware-configuration.nix
    ./configs/boot.nix
    ./configs/hardware.nix
    ./configs/networking.nix
    # ./wifi-network-configuration.nix
    # ./i18n-configuration.nix
    ./configs/services.nix
    ./configs/user.nix
    # ./fonts-configuraton.nix
    # ./env-configuration.nix
    ./configs/packages.nix
  ];
  
  ### Misc
  time.timeZone = "America/Los_Angeles";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?
}
