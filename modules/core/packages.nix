{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim wget git curl fastfetch flatpak htop btop mono
    iptables dnsmasq iptables-legacy
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.meslo
    nerd-fonts.jetbrains-mono
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}
