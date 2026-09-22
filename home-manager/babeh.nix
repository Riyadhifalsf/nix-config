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
    configType = "lua";
    extraConfig = builtins.readFile ./config/hyprland/main.lua;
  };

  home.file.".config/hypr/babeh/appearance.lua".source =
    ./config/hyprland/appearance.lua;
  home.file.".config/hypr/babeh/keybinds.lua".source =
    ./config/hyprland/keybinds.lua;
  home.file.".config/hypr/babeh/startup.lua".source =
    ./config/hyprland/startup.lua;

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ${config.home.homeDirectory}/.config/babeh/wallpaper.jpg
    wallpaper = ,${config.home.homeDirectory}/.config/babeh/wallpaper.jpg
  '';

  home.file.".config/babeh/wallpaper.jpg".source =
    ./config/assets/wallpaper.jpg;

  services.hypridle.enable = true;
  services.mako.enable = true;
}
