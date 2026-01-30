{ config, pkgs, ... }:

{
 	imports = [
		# System Configuration
		./hardware-configuration.nix
		../../modules/core/bootloader.nix
		../../modules/core/users.nix
		../../modules/core/packages.nix
		../../modules/core/locale.nix
		../../modules/core/keymap.nix
		../../modules/core/pipewire.nix
		../../modules/core/dbus.nix
		../../modules/core/kernel-settings.nix
		../../modules/core/network.nix
		../../modules/core/nixpkgs-config.nix
		../../modules/core/samba-config.nix	

		# Programs
		../../modules/programs/zsh.nix
		../../modules/programs/cups.nix
		../../modules/programs/flatpak.nix
		../../modules/programs/firefox.nix
		../../modules/programs/steam.nix
		../../modules/programs/tor.nix
		# ../../modules/programs/adb.nix
	];
	
	boot.kernel.sysctl = {
  		"kernel.unprivileged_userns_clone" = 1;
	};


	system.stateVersion = "24.11";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
