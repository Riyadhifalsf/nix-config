{ config, pkgs, ... }:

{
 	imports = [
		# System Configuration
		./hardware-configuration.nix
		../../modules/core/bootloader.nix
		../../modules/core/users.nix
		../../modules/core/packages.nix
		../../modules/core/locale.nix
		../../modules/core/kernel-settings.nix
		../../modules/core/network.nix
		../../modules/core/nixpkgs-config.nix

		# Services
		../../modules/services/printing.nix
		../../modules/services/gpg-agent.nix
		../../modules/services/flatpak.nix
		../../modules/services/tor.nix
		../../modules/services/keymap.nix
		../../modules/services/pipewire.nix
		../../modules/services/dbus.nix
		../../modules/services/samba-config.nix	
		../../modules/services/flatpak.nix
		../../modules/services/tor.nix
		# ../../modules/services/ssh.nix

		# Desktop Environment	
		../../modules/desktop/kde-plasma/plasma.nix
		../../modules/display-manager/sddm.nix

		# Programs
		../../modules/programs/zsh.nix
		../../modules/programs/firefox.nix
		../../modules/programs/steam.nix
		../../modules/programs/virt-manager.nix
		../../modules/programs/adb.nix

	];
	
	boot.kernel.sysctl = {
  		"kernel.unprivileged_userns_clone" = 1;
	};


	system.stateVersion = "24.11";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
