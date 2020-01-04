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
    archiver
    # ark
    bash
    bolt
    gnumake
    curl
    # docker-machine
    # exfat
    # filelight
    # geoclue2
    git
    # gnome2.libgtkhtml
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
    shutter
    solaar
    synergy
    unzip
    wget
    # wpa_supplicant
    xclip

    # Multimedia
    spotify
    feh
    # gpicview
    inkscape
    mpv
    # nomacs
    # photoqt
    # xfce.ristretto
    # shotwell

    # Web
    chromium
    firefox

    # Fle Sharing
    ktorrent

    # Communication
    discord
    konversation
    riot-web
    # skypeforlinux
    qtox
    # weechat
    # Editors
    vim
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        bbenoist.Nix
      ]

      ++ vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "auto-rename-tag";
            publisher = "formulahendry";
            version = "0.1.0";
            sha256 = "1zcxcf269jbwpsa29mlmfs3z8awbsccrq595m6chqrspnw2l8a2b";
          }
          {
            name = "code-runner";
            publisher = "formulahendry";
            version = "0.9.11";
            sha256 = "1gfs0aklxn9dniqhfnlyaplig2n42kvx186bbk10n3kazs44n2l0";
          }
          {
            name = "better-toml";
            publisher = "bungcip";
            version = "0.3.2";
            sha256 = "08lhzhrn6p0xwi0hcyp6lj9bvpfj87vr99klzsiy8ji7621dzql3";
          }
          {
            name = "editorconfig";
            publisher = "editorconfig";
            version = "0.13.0";
            sha256 = "1dy7rf9w1mvk65fmxbvhbi5pf6cw2lwi07yhafq9x20c36g6dwyz";
          }
          {
            name = "es7-react-js-snippets";
            publisher = "dsznajder";
            version = "2.3.0";
            sha256 = "130n48xlhcy3cdpn16narlj7jvjh5hi63vgfbp82h7y399clni08";
          }
          {
            name = "gitlens";
            publisher = "eamodio";
            version = "9.8.5";
            sha256 = "067jhcyy5glx9xqh6k9gkla065wsiic6lkpgfz4xpmjpn81pmva6";
          }
          {
            name = "git-project-manager";
            publisher = "felipecaputo";
            version = "1.7.1";
            sha256 = "1pghgzs89qwp9bx6z749z6a00pfqm2416n4lmna6dhpk5671hah9";
          }
          {
            name = "prettier-vscode";
            publisher = "esbenp";
            version = "1.7.0";
            sha256 = "1nzwx7imhzccxydhpyrc08qlibcpn072zwjwc9qwfyv82m1b3f5v";
          }
          {
            name = "stylelint";
            publisher = "shinnn";
            version = "0.51.0";
            sha256 = "0qxa6jcfjl9vkx06shxjpa8k99ysvar3i0pzqdnc4aizjcayn3i4";
          }
          {
            name = "svg";
            publisher = "jock";
            version = "0.1.6";
            sha256 = "0pc2s6rpr7adlv40r1khfx8sybzg9sg47a5cl5wpd7n07sag68qc";
          }
          {
            name = "vscode-docker";
            publisher = "ms-azuretools";
            version = "0.7.0";
            sha256 = "0bgs6dy429m5yn10dd8m321slf5mqgsbr86ip61kvjwh67q9glcr";
          }
          {
            name = "vscode-eslint";
            publisher = "dbaeumer";
            version = "1.9.0";
            sha256 = "1lr25v236cz8kbgbgqj6izh3f4nwp9cxygpa0zzfvfrg8gg0x49w";
          }
          {
            name = "vscode-nginx";
            publisher = "william-voyek";
            version = "0.7.1";
            sha256 = "0rxb9f98ns0pddykvpvhsg7mkpy59d00c08mwwrzpb234lbcxwsi";
          }
          {
            name = "vscode-styled-components";
            publisher = "jpoissonnier";
            version = "0.0.26";
            sha256 = "09lgc1fjdrgzw6n72w833kyfk7m0008lmd17r0vljcd572igfhhc";
          }
          {
            name = "vscode-todo-plus";
            publisher = "fabiospampinato";
            version = "4.13.0";
            sha256 = "14sgkkq0hnz5fa3j2g9sjg8flxsbjswc6wrg8agq43vphng1cfm9";
          }
          {
            name = "vscode-versionlens";
            publisher = "pflannery";
            version = "0.24.0";
            sha256 = "1ipvm1zd0zq4dc6fhphcm3rrb9sxcghcj4qzfy1i4p9rvap16708";
          }
        ];
    })
    kate
    gnome3.gedit


    # Multimedia
    spotify
    feh
    # gpicview
    inkscape
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
    discord
    konversation
    # riot-web
    # skypeforlinux
    # weechat

    # Programming
    meld
    nodejs-11_x
    yarn
    python

    # Games
    # steam
    # steam-run
    # playonlinux

    # Virtualization
    # virtualbox
    docker-compose

    # Productivity
    gnome3.gnome-calculator
  ];
} 
