{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/bootloader.nix
    ../../modules/core/users.nix
    ../../modules/core/packages.nix
    ../../modules/core/locale.nix
    ../../modules/core/kernel-settings.nix
    ../../modules/core/network.nix
    ../../modules/core/nixpkgs.nix
    ../../modules/core/bluetooth.nix
    ../../modules/services/printing.nix
    ../../modules/services/flatpak.nix
    ../../modules/services/tor.nix
    ../../modules/services/keymap.nix
    ../../modules/services/pipewire.nix
    ../../modules/services/dbus.nix
    ../../modules/services/samba-config.nix
    ../../modules/programs/firefox.nix
    ../../modules/programs/steam.nix
    ../../modules/programs/virt-manager.nix
    ../../modules/programs/adb.nix
    ../../modules/desktop/hyprland/hyprland.nix
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  catppuccin.sddm.enable = true;
  security.polkit.enable = true;
  programs.dconf.enable = true;

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    users.babeh = import ../../home-manager/babeh.nix;
  };

  boot.kernel.sysctl."kernel.unprivileged_userns_clone" = 1;
  system.stateVersion = "24.11";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
