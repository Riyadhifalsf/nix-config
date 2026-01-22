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


          vim
    git
    htop

      flutter
      chromium
      openjdk17
      mesa
      mesa-demos

        iptables
        dnsmasq
        iptables-legacy
  ];

}
