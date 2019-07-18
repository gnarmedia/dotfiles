# Miscellaneous hardware configuration

{ config, pkgs, ... }:

{
  hardware = {
    # Pulse audio server
    pulseaudio = {
      enable = true;
      package = pkgs.pulseaudioFull;
      support32Bit = true;
    };

    # Enable bluetooth
    bluetooth.enable = true;

    # Enable 32Bit acceleration support
    opengl.driSupport32Bit = true;
  };

  virtualisation.docker.enable = true;
}