{
    programs.zsh = {
        enable = true;

        enableCompletion = true;
        syntaxHighlighting.enable = true;

        
        # history = {
        #     enable = true;
        #     path = "$HOME/.zsh_history";
        #     size = 10000;
        #     save = 10000;
        #     share = true;
        #     ignoreDups = true;
        #     ignoreSpace = true;
        # };

        shellAliases = {
            ll = "ls -lah";
            gs = "git status";
        };

        initExtra = ''
            # load powerlevel10k
            source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

            # load declarative p10k config
             source ${../modules/programs/zsh/p10k.zsh}
        '';

    };
   programs.zsh.autosuggestion.enable = true;
    programs.starship = {
        enable = true;
        enableZshIntegration = true;
    };  

}