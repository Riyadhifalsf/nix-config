{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        wget
        git
        fastfetch
        flatpak
        whitesur-gtk-theme
        sassc
        glib 

        zsh-autosuggestions
        zsh-syntax-highlighting

        git
        htop



        iptables
        dnsmasq
        iptables-legacy
  ];

}
