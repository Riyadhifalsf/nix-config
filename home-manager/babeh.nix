{ pkgs, ... }:

{
    home.stateVersion = "24.11";

    home.username = "babeh";
    home.homeDirectory = "/home/babeh";

    home.packages = with pkgs; [

        keepassxc
        bitwarden-desktop
        vscode
        spotify
        obsidian
        telegram-desktop
        bottles
        wpsoffice
        zsh
        neovim
        
        pkgs.android-studio
        arduino-ide
        planify
        codeblocksFull
        distrobox

        flutter
        chromium
        openjdk17
        mesa
        mesa-demos
    ];

    services.gpg-agent.enable = true;

    home.file.".config/plasmashellrc".source =
    ../modules/desktop/kde-plasma/config/plasmashellrc;

    home.file.".config/plasma-org.kde.plasma.desktop-appletsrc".source =
    ../modules/desktop/kde-plasma/config/plasma-org.kde.plasma.desktop-appletsrc;

    home.file.".config/kdeglobals".source =
    ../modules/desktop/kde-plasma/config/kdeglobals;

    # icon launcher
    home.file.".local/share/icons/icon-launcher.png".source =
    ../modules/desktop/kde-plasma/config/assets/icon-launcher.png;
    
    # wallpaper
    home.file.".local/share/wallpapers/wallpaper.jpg".source =
    ../modules/desktop/kde-plasma/config/assets/wallpaper.jpg;

}
