{ pkgs, ... }:

{
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
        iptables-legacy
  ];

}
