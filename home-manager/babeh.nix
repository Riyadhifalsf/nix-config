{ pkgs, inputs, config, ... }:

{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
    ../modules/programs/gpg-agent.nix
    ../modules/programs/zsh/zsh.nix
    ../modules/theme/catppuccin.nix
  ];

  home.username = "babeh";
  home.homeDirectory = "/home/babeh";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    keepassxc bitwarden-desktop vscode spotify obsidian telegram-desktop
    wpsoffice neovim arduino-ide planify codeblocksFull distrobox tree
    lutris wine unrar
  ];

  programs.git.enable = true;
  programs.zsh.enable = true;
  programs.kitty.enable = true;
  programs.waybar.enable = true;
  gtk.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;
    configType = "hyprlang";

    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      "$launcher" = "wofi --show drun";
      monitor = ",preferred,auto,1";

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        blur.enabled = true;
        shadow.enabled = true;
      };

      input.kb_layout = "us";
      exec-once = [ "hyprpaper" "hyprpolkitagent" ];

      bind = [
        "$mod, RETURN, exec, $terminal"
        "$mod, D, exec, $launcher"
        "$mod, Q, killactive"
        "$mod, F, fullscreen"
        "$mod, V, togglefloating"
        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, L, movewindow, r"
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
      ];
    };
  };

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ${config.home.homeDirectory}/.config/babeh/wallpaper.jpg
    wallpaper = ,${config.home.homeDirectory}/.config/babeh/wallpaper.jpg
  '';

  home.file.".config/babeh/wallpaper.jpg".source =
    ./config/assets/wallpaper.jpg;

  services.hypridle.enable = true;
  services.mako.enable = true;
}
