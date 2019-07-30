# Packages configuration

{ options, lib, config, pkgs, modulesPath }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search by name, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # User Management
    # home-manager

    # System
    # appimage-run
    # ark
    bash
    # bolt
    gnumake
    curl
    # docker-machine
    # exfat
    # filelight
    # geoclue2
    git
    # gnome2.libgtkhtml
    # gnome3.gedit
    # gnome3.nautilus
    # gparted
    # haskellPackages.disk-free-space
    htop
    # kdeApplications.spectacle
    # libnotify
    # ntfs3g
    # partition-manager
    # python37Packages.virtual-display
    # redshift
    solaar
    wget
    # wpa_supplicant
    xclip

    # Editors
    vim
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        bbenoist.Nix
      ]

      ++ vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "code-runner";
            publisher = "formulahendry";
            version = "0.9.11";
            sha256 = "1gfs0aklxn9dniqhfnlyaplig2n42kvx186bbk10n3kazs44n2l0";
          }
          {
            name = "gitlens";
            publisher = "eamodio";
            version = "9.8.5";
            sha256 = "067jhcyy5glx9xqh6k9gkla065wsiic6lkpgfz4xpmjpn81pmva6";
          }
          {
            name = "es7-react-js-snippets";
            publisher = "dsznajder";
            version = "2.3.0";
            sha256 = "130n48xlhcy3cdpn16narlj7jvjh5hi63vgfbp82h7y399clni08";
          }
        ];
    })


    # Multimedia
    # feh
    # gpicview
    # inkscape
    mpv
    # nomacs
    # photoqt
    # xfce.ristretto
    # shotwell

    # Web
    chromium
    firefox
    ktorrent

    # Communication
    # discord
    konversation
    # riot-web
    # skypeforlinux
    # weechat

    # Programming
    meld
    nodejs-8_x
    yarn
    python

    # Games
    # steam
    # steam-run
    # playonlinux

    # Virtualization
    # virtualbox
  ];
} 
