# Babeh NixOS Configuration

Modular **NixOS + Home Manager** configuration for the `babeh` host.

> "Sedikit lebih beda lebih baik daripada sedikit lebih baik"
> â€” Quote Babeh

## Stack

| Layer | Technology |
| --- | --- |
| OS | NixOS 26.05 |
| Package manager | Nix + Flakes |
| User config | Home Manager 26.05 |
| Desktop | Hyprland + Wayland |
| Session manager | UWSM |
| Display manager | SDDM |
| Theme | Catppuccin Mocha + Mauve |
| Bar | Waybar |
| Launcher | Wofi |
| Terminal | Kitty |
| Notifications | Mako |
| Wallpaper | Hyprpaper |
| Lock / idle | Hyprlock / Hypridle |
| Audio | PipeWire |
| Shell | Zsh + Powerlevel10k |
| Editor | Neovim |
| Virtualization | libvirt + virt-manager |
| Gaming | Steam + Lutris + Wine |
| Apps | VS Code, Obsidian, Spotify, Telegram, WPS Office, KeePassXC, Bitwarden |

## Design goals

- Easy to read: host wiring stays small; features live in modules.
- Modular: desktop, theme, core, services and programs are separated.
- Reproducible: dependencies are pinned in `flake.lock`.
- Safe upgrades: build first, activate second, keep rollback available.
- Hyprland is the primary desktop; old KDE modules remain as optional legacy modules.

## Structure

~~~text
.
â”œâ”€â”€ flake.nix
â”œâ”€â”€ flake.lock
â”œâ”€â”€ hosts/
â”‚   â””â”€â”€ babeh/
â”‚       â”œâ”€â”€ default.nix
â”‚       â””â”€â”€ hardware-configuration.nix
â”œâ”€â”€ home-manager/
â”‚   â””â”€â”€ babeh.nix
â””â”€â”€ modules/
    â”œâ”€â”€ core/
    â”œâ”€â”€ desktop/
    â”‚   â””â”€â”€ hyprland/
    â”œâ”€â”€ display-manager/
    â”œâ”€â”€ programs/
    â”œâ”€â”€ services/
    â””â”€â”€ theme/
        â””â”€â”€ catppuccin.nix
~~~

## First install / migration

Clone the repository and inspect the target before switching:

~~~bash
git clone https://github.com/Riyadhifalsf/nix-config.git
cd nix-config

nix flake check --no-build
sudo nixos-rebuild build --flake .#babeh
~~~

Only after the build succeeds:

~~~bash
sudo nixos-rebuild switch --flake .#babeh
~~~

Then reboot or select **Hyprland (uwsm)** from SDDM.

## Updating

~~~bash
nix flake update
nix flake check --no-build
sudo nixos-rebuild build --flake .#babeh
sudo nixos-rebuild switch --flake .#babeh
~~~

Do not skip the build step when changing desktop/session components.

## Rollback

If a new generation causes trouble, use the boot menu to select the previous generation.

From a working terminal:

~~~bash
sudo nixos-rebuild switch --rollback
~~~

## Notes

`system.stateVersion` and `home.stateVersion` intentionally remain `24.11`. These values describe state compatibility and should not be bumped merely because the NixOS/Home Manager package release was upgraded.

Hyprland is configured through Home Manager while the NixOS Hyprland module owns system integration and UWSM. Home Manager systemd integration is disabled to avoid conflicting with UWSM.

The theme is declarative: Catppuccin is applied to GTK, Kitty, Hyprland, Waybar and SDDM where supported.

## License

Personal configuration. Use it as a reference, but review hardware-specific settings before deploying to another machine.
