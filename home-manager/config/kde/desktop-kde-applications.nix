{
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
    Categories=Audio;Music;
    StartupWMClass=steam
  '';

    home.file.".local/share/applications/keepassxc.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Keepassxc
    Exec=keepassxc %U
    Icon=keepassxc
    Terminal=false
    Categories=Audio;Music;
    StartupWMClass=keepassxc
  '';

   home.file.".local/share/applications/code.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Visual Studio Code
    Exec=code %U
    Icon=code
    Terminal=false
    Categories=Audio;Music;
    StartupWMClass=code
  '';   
  
  home.file.".local/share/applications/bitwarden.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Bitawarden
    Exec=bitwarden %U
    Icon=bitwarden
    Terminal=false
    Categories=Audio;Music;
    StartupWMClass=bitwarden
  '';
}