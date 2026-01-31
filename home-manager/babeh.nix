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

}
