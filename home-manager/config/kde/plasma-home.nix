{
   home.file.".config/plasmashellrc".source =
    ./plasmashellrc;

  home.file.".config/plasma-org.kde.plasma.desktop-appletsrc".source =
  ./plasma-org.kde.plasma.desktop-appletsrc;

  home.file.".config/kdeglobals".source =
    ./kdeglobals;

  # icon launcher
  home.file.".local/share/icons/icon-launcher.png".source =
    ../assets/icon-launcher.png;

  # wallpaper
  home.file.".local/share/wallpapers/wallpaper.jpg".source =
    ../assets/wallpaper.jpg;

home.file.".local/share/applications/spotify.desktop".text = ''
[Desktop Entry]
Type=Application
Name=Spotify
Exec=spotify %U
Icon=spotify
Terminal=false
Categories=Audio;Music;
StartupWMClass=spotify
'';


home.file.".local/share/applications/steam.desktop".text = ''
[Desktop Entry]
Type=Application
Name=Steam
Exec=steam %U
Icon=steam
Terminal=false
Categories=Game;
StartupWMClass=steam
'';


home.file.".local/share/applications/keepassxc.desktop".text = ''
[Desktop Entry]
Type=Application
Name=KeePassXC
Exec=keepassxc %U
Icon=keepassxc
Terminal=false
Categories=Utility;Security;
StartupWMClass=KeePassXC
'';


home.file.".local/share/applications/code.desktop".text = ''
[Desktop Entry]
Type=Application
Name=Visual Studio Code
Exec=code %U
Icon=code
Terminal=false
Categories=Development;IDE;
StartupWMClass=code
'';
  
  
home.file.".local/share/applications/bitwarden.desktop".text = ''
[Desktop Entry]
Type=Application
Name=Bitwarden
Exec=bitwarden %U
Icon=bitwarden
Terminal=false
Categories=Utility;Security;
StartupWMClass=Bitwarden
'';


}