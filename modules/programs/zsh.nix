{
    # Konfigurasi Zsh sebagai shell default
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

        ohMyZsh.plugins= {
            enable = true;
            theme = "powerlevel10k/powerlevel10k";
            plugins = [ "git" ];
        };

    };
    programs.zsh.autosuggestions.enable = true;


    # programs.starship = {
    #     enable = true;
    #     enableZshIntegration = true;
    # };

}