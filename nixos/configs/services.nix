# Services configuration

{ config, ... }:

{
  services = {
    # Enable the OpenSSH daemon.
    # openssh.enable = true;

    # Enable CUPS to print documents.
    printing.enable = true;

    # enable geolocation
    # geoclue2.enable = true;

    # enable thunderbolt
    hardware.bolt.enable = true;

    xserver = {
      enable = true;
      videoDrivers = [ "intel" ];
      layout = "us";
      
      libinput.enable = true; # enable touchpad

      displayManager.sddm.enable = true;

      # Enable the KDE Desktop Environment.
      desktopManager.plasma5.enable = true;
    };
  };

  virtualisation.docker.enable = true;
}
