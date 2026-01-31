# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader
    boot.loader = {
      efi.canTouchEfiVariables = true;
      grub ={
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
        theme = "${
          (pkgs.fetchFromGitHub {
            owner = "semimqmo";
            repo = "sekiro_grub_theme";
            rev = "1affe05f7257b72b69404cfc0a60e88aa19f54a6";
            hash = "sha256-wTr5S/17uwQXkWwElqBKIV1J3QUP6W2Qx2Nw0SaM7Qk=";
          })
        }/Sekiro";
      };
      timeout = 10;
    };

  # Aktifkan binder & ashmem (WAJIB)
  boot.kernelModules = [ "binder_linux" "ashmem_linux" ];

  # Waydroid service
  virtualisation.waydroid.enable = true;

boot.kernel.sysctl = {
  "kernel.unprivileged_userns_clone" = 1;
};

  # Waydroid butuh iptables (bukan nft doang)
  networking.nftables.enable = false;
  networking.firewall.enable = false;


<<<<<<< HEAD

=======
services.samba = {
  enable = true;
  openFirewall = true;

  settings = {
    share = {
      path = "/run/media/babeh/Nix";
      browseable = "yes";
      writable = "yes";
      guestOk = "yes";
      createMask = "0777";
      directoryMask = "0777";
      validUsers = [ "babeh" ];
    };
  };
};
>>>>>>> 6f7ee0e (Init nixos flake config)

  # Optional: kalau pakai Wayland (Hyprland, GNOME, dll)
  services.dbus.enable = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "babehnix"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  programs.nix-ld.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Jakarta";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma 6 Desktop Environment.
<<<<<<< HEAD
  services.displayManager.enable = true;
  services.desktopManager.gnome.enable = true;
=======
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
>>>>>>> 6f7ee0e (Init nixos flake config)
  
  # Set Flutter
  environment.variables = {
    ANDROID_SDK_ROOT = "/home/babeh/Android/Sdk";
    ANDROID_HOME = "/home/babeh/Android/Sdk";
    CHROME_EXECUTABLE = "/run/current-system/sw/bin/chromium";
    JAVA_HOME = "/nix/store/xad649j61kwkh0id5wvyiab5rliprp4d-openjdk-17.0.15+6";
  };
<<<<<<< HEAD
  
  nixpkgs.config = {
    android_sdk.accept_license = true;
    nixpkgs.config.allowUnfree = true;
  };
=======
>>>>>>> 6f7ee0e (Init nixos flake config)

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Configure Virt-manager
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["babeh"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable Flatpak services.
  services.flatpak.enable = true;

  # Enable sound with pipewire.
<<<<<<< HEAD
  services.pulseaudio.enable = false;
=======
  # services.pulseaudio.enable = false;
>>>>>>> 6f7ee0e (Init nixos flake config)
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable zsh shell
  programs.zsh.enable = true;


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.babeh = {
    isNormalUser = true;
    description = "Babeh";
    extraGroups = [ "networkmanager" "wheel" "kvm" "libvirtd" "adbusers" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	neovim
	wget
	git
	fastfetch
	flatpak
	gnome-tweaks
 	whitesur-gtk-theme
    	sassc
    	glib 
	zsh
	zsh-autosuggestions
 	zsh-syntax-highlighting

	keepassxc
	bitwarden-desktop
	vscode
	spotify
	virt-manager
	obsidian
	telegram-desktop
	bottles
	wpsoffice
	pkgs.android-studio
	arduino-ide
	planify
	codeblocksFull
	onlyoffice-desktopeditors
	libreoffice-qt6-fresh
	distrobox
	flutter
	chromium
	openjdk17
	mesa
	mesa-demos
	android-tools
	docker

    iptables
    dnsmasq
<<<<<<< HEAD
=======
iptables-legacy
>>>>>>> 6f7ee0e (Init nixos flake config)
  ];
  
  # Steam 
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

# Docker
<<<<<<< HEAD
virtualisation.docker.enable = true;
virtualisation.docker.rootless = {
  enable = true;
};

  # OBS Studio
  programs.obs-studio = {
    enable = true;

    # optional Nvidia hardware acceleration
    package = (
      pkgs.obs-studio.override {
        cudaSupport = true;
      }
    );

    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-vaapi #optional AMD hardware acceleration
      obs-gstreamer
      obs-vkcapture
    ];
  };
  
=======
virtualisation.docker.enable = false;
virtualisation.docker.rootless = {
  enable = false;
};

>>>>>>> 6f7ee0e (Init nixos flake config)
  # Tor Browser
  services.tor = {
  enable = true;
  openFirewall = true;
  relay = {
    enable = true;
    role = "relay";
  };
  settings = {
     ContactInfo = "toradmin@example.org";
     Nickname = "toradmin";
     ORPort = 9001;
     ControlPort = 9051;
     BandWidthRate = "1 MBytes";
    };
  };

# Adb
programs.adb.enable = true;

system.userActivationScripts = {
  stdio = {
    text = ''
      rm -f ~/Android/Sdk/platform-tools/adb
      ln -s /run/current-system/sw/bin/adb ~/Android/Sdk/platform-tools/adb
    '';
  };
};
  
  
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
