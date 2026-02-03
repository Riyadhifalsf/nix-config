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
        mesa
        mesa-demos
        git
        htop
        mono

        iptables
        dnsmasq
        iptables-legacy
  ];

  fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "Meslo" ]; })
];  

xdg.portal = {
  enable = true;
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
};

}
