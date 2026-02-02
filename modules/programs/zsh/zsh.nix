{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
    };

    initExtra = ''
      # load powerlevel10k theme
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

      # load declarative p10k config
      [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    '';
  };

  # COPY p10k config ke HOME (INI KUNCI UTAMANYA)
  home.file.".p10k.zsh".source = ./p10k.zsh;

}
