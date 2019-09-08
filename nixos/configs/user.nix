# User Configuration

{ config, pkgs, ... }:

{
  # General Users configuration
  users = {
  # Define a user account. Don't forget to set a password with ‘passwd’.
    users.adam = {
      isNormalUser = true;
      home = "/home/adam";
      uid = 1000;
      extraGroups = [
        "audio"
        "docker"
        "networkmanager"
        "wheel"
      ];
      # packages = [
      #   pkgs.steam
      # ];
    };
  };
  # environment.systemPackages = with pkgs; [
  #   steam
  #   steam-run
  #   playonlinux
  # ];
}