# Networking configuration
 
{ config, ... }:

{
  networking = {
    hostName = "nixos";

    # wireless.enable = true; # Enables wireless support via wpa_supplicant.
    networkmanager.enable = true; # Enable wireless network

    # Configure network proxy if necessary
    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  };
}