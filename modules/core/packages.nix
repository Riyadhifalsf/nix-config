{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        wget
        git
        fastfetch
        flatpak
        sassc
        glib

        git
        htop

        iptables
        dnsmasq
        iptables-legacy
  ];

  fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "Meslo" ]; })
];  

}
